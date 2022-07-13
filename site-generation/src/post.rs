use std::fs;
use std::path;
use std::str;
use std::fmt;

use comrak::{Arena, parse_document, ComrakOptions};
use comrak::nodes::{AstNode, NodeValue};

use dsl::{
    *,
    nodes::*,
    css::*,
    css::Style,
    attr::*
};

use crate::date;

pub struct Post {
    pub name : String,
    pub html : Article,
    pub date : date::Date,
    pub preview : String,
    pub api_name : String,
    pub path : path::PathBuf,
}

static NORMAL_POST_IMAGE_PATH : &str = "../../images/";
static TOP_LEVEL_IMAGE_PATH : &str = "images/";

impl fmt::Debug for Post {
    fn fmt(&self, f : &mut fmt::Formatter<'_>) -> fmt::Result {
        f.debug_struct("Post")
        .field("name", &self.name)
        .field("html", &"<OMITTED>")
        .field("date", &self.date)
        .field("preview", &self.preview)
        .field("api_name", &self.api_name)
        .field("path", &self.path)
        .finish()
    }
}

#[derive(serde::Deserialize)]
struct FrontMatter {
    preview : String,
    date : String
}

fn get_ast_node<'a>(arena : &'a Arena<AstNode<'a>>, markdown : &String) -> &'a AstNode<'a> {
    let mut options = ComrakOptions::default();
    options.render.unsafe_ = true; // Allow raw HTML
    options.extension.front_matter_delimiter = Some(String::from("+++"));

    parse_document(
        &arena,
        &markdown,
        &options
    )
}

fn extract_api_name(name : &str) -> String {
    name
    .chars()
    // Convert all spaces to hyphens.
    .map(|c| if c == ' ' {'-'} else {c})
    // Lowercase all characters.
    .map(|c| c.to_lowercase().next().unwrap())
    // Filter out characters which may appear in post name but shouldn't appear in api
    // name.
    .filter(|c| { !"?".contains(&c.to_string()) })
    .collect()
}

impl Post {
    pub fn new(path : path::PathBuf, top_level : bool) -> Post {

        let arena = Arena::new();
        
        let file_contents =
            fs::read_to_string(&path).unwrap();

        let ast = get_ast_node(&arena, &file_contents);

        let mut article = article!([][margin_bottom("4rem"), margin_top("3rem")][]);
        let mut front_matter = String::new();
        let mut name = None;
        get_post_info(ast, &mut article, &mut front_matter, &mut name, top_level);

        let FrontMatter { preview, date } = serde_json::from_str(&front_matter).unwrap();

        let name = name.unwrap();
        let api_name = extract_api_name(&name);

        Post {
            name,
            html : article,
            date : date::Date::parse(&date),
            preview,
            api_name,
            path,
        }
    }
}


pub fn get_post_info<'a, T>(md_node : &'a AstNode<'a>, html_node : &mut T, front_matter : &mut String, name : &mut std::option::Option<String>, top_level : bool)
    where T : ParentNode {

    for child in md_node.children() {
        match &child.data.borrow().value {
            NodeValue::FrontMatter(val) => {
                if front_matter.is_empty() {
                    *front_matter =
                        str::from_utf8(&val)
                        .unwrap()
                        .chars()
                        .filter(|c| c != &'+')
                        .collect();
                }
            }, 
            NodeValue::BlockQuote => {
                let mut blockquote = blockquote!([][text_align("center"), font_style("italic")][]);
                get_post_info(&child, &mut blockquote, front_matter, name, top_level);
                html_node.child(blockquote);
            },
            NodeValue::CodeBlock(val) => {
                html_node.child(
                    pre!([][background_color("#eee"), border_radius("0.5em"), display("block"), padding("1em")][
                        code!([][][
                            text![str::from_utf8(&val.literal).unwrap()]
                        ])
                    ])
                );
            },
            NodeValue::Code(val) => {
                html_node.child(
                    code!([][background_color("#eee"), color("black")][
                        text![str::from_utf8(&val.literal).unwrap()]
                    ])
                );
            },
            NodeValue::HtmlBlock(val) => {
                let html_block =
                    str::from_utf8(&val.literal)
                    .unwrap()
                    .replace("\n", "");

                html_node.child(text![&html_block]);
            },
            NodeValue::Paragraph => {
                let mut paragraph = p!([][font_size("14pt")][]);
                get_post_info(&child, &mut paragraph, front_matter, name, top_level);
                html_node.child(paragraph);
            },
            NodeValue::Heading(val) => {
                // Set a flag that the heading is being processed.
                if name.is_none() {
                    *name = Some(String::new());
                }

                match val.level {
                    1 => panic!("H1 headers are not permitted within the post content. Use H2 for top level header and smaller headers elsewhere"),
                    2 => {
                        let mut heading = h2!([][margin_bottom(".25rem"), font_size("2.5rem")][]);
                        get_post_info(child, &mut heading, front_matter, name, top_level);
                        html_node.child(heading);
                    },
                    3 => {
                        let mut heading = H3::new(); 
                        get_post_info(child, &mut heading, front_matter, name, top_level);
                        html_node.child(heading);
                    },
                    4 => {
                        let mut heading = H4::new();
                        get_post_info(child, &mut heading, front_matter, name, top_level);
                        html_node.child(heading);
                    },
                    5 => {
                        let mut heading = H5::new();
                        get_post_info(child, &mut heading, front_matter, name, top_level);
                        html_node.child(heading);
                    },
                    6 => {
                        let mut heading = H6::new();
                        get_post_info(child, &mut heading, front_matter, name, top_level);
                        html_node.child(heading);
                    },
                    _ => panic!("Invalid header level."),
                }
            },
            NodeValue::ThematicBreak => {
                html_node.child(Hr::new()); 
            },
            NodeValue::Text(val) => {
                // Check if within the top level header, so that the value can be updated.
                if name.is_some() && name.as_ref().unwrap().is_empty() {
                    name.as_mut().unwrap().push_str(str::from_utf8(val).unwrap());
                }

                html_node.child(text![str::from_utf8(val).unwrap()]);
            },
            NodeValue::HtmlInline(val) => {
                let html_inline = str::from_utf8(&val).unwrap().replace("\n", "");
                html_node.child(text![&html_inline]);
            },
            NodeValue::Emph => {
                let mut em = Em::new();
                get_post_info(&child, &mut em, front_matter, name, top_level);
                html_node.child(em);
            },
            NodeValue::Strong => {
                let mut strong = Strong::new();
                get_post_info(&child, &mut strong, front_matter, name, top_level);
                html_node.child(strong);
            },
            NodeValue::Link(val) => {
                html_node.child(a!([href(&str::from_utf8(&val.url).unwrap())][text![&str::from_utf8(&val.title).unwrap()]]));
            },
            NodeValue::Image(val) => {
                let mut path = String::from(
                    if top_level {
                        TOP_LEVEL_IMAGE_PATH
                    } else {
                        NORMAL_POST_IMAGE_PATH
                    });
                path.push_str(str::from_utf8(&val.url).unwrap());
                html_node.child(
                    img!([src(&path)][
                         css::width("100%")
                    ])
                );
            },
            NodeValue::List(val) => {
                use comrak::nodes::ListType::*;
                match val.list_type {
                    Bullet => {
                        let mut list = Ul::new();
                        get_post_info(&child, &mut list, front_matter, name, top_level);
                        html_node.child(list);
                    },
                    Ordered => {
                        let mut list = Ol::new();
                        get_post_info(&child, &mut list, front_matter, name, top_level);
                        html_node.child(list);
                    },
                }
            },
            NodeValue::Item(_) => {
                let mut item = Li::new();
                get_post_info(&child, &mut item, front_matter, name, top_level);
                html_node.child(item);
            },
            // Explicitly ignored elements.
            NodeValue::SoftBreak => (),
            // Anything else is invalid.
            _ => panic!("Markdown to HTML conversion not implemented for {:?}", child.data.borrow().value),
        }
    }
}
