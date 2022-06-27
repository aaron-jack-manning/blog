mod post;
mod date;
mod rss;

use std::path;
use std::fs;
use std::env;
use std::ffi;

use post::Post;

use dsl::{
    *,
    nodes::Title,
    nodes::*,
    css::*,
    attr::*,
    css::Style
};

fn font() -> FontFamily {
    font_family("&quot;Computer Modern&quot;, sans-serif")
}

// Head element for all pages.
fn head(page_title : &str, path_to_root : &str) -> Head {
    head!([
        meta!([charset("utf-8")]),
        meta!([name("viewport"), attr::content("width=device-width,initial-scale=1")]),
        meta!([name("description"), attr::content("A blog (mostly) about things related to mathematics and computing.")]),
        meta!([name("author"), attr::content("Aaron Manning")]),
        meta!([name("keywords"), attr::content("mathematics, math, maths, programming, education")]),
        title!([text![page_title]]),
        link!([rel("stylesheet"), href(&format!("{}bootstrap/bootstrap.min.css", path_to_root))]),
        link!([rel("stylesheet"), href(&format!("{}stylesheet.css", path_to_root))]),
        link!([rel("icon"), attr::r#type("image/png"), href(&format!("{}images/favicon.png", path_to_root))]),
        // Enable $ in mathjax inline.
        script!([attr::r#type("text/javascript")][
            text!["window.MathJax = { tex: { inlineMath: [['$', '$'], [\"\\\\(\", \"\\\\)\"]], processEscapes: true, } }"]
        ]),
        script!([attr::r#type("text/javascript"), src(&format!("{}mathjax/es5/tex-chtml-full.js", path_to_root))][])
    ])
}

// Footer element for all pages.
fn footer() -> Footer {
    let footer_style = style![
        padding("2.5rem"),
        color("#727272"),
        text_align("center"),
        background_color("#f9f9f9"),
        border_top(".05rem solid #e5e5e5")
    ];
    
    footer!([](footer_style)[
        p!([
           text!["By Aaron Manning"]
        ]),
        p!([
           a!([href("#")][
              text!["Back to top"]
           ])
        ])
    ])
}

// Title and navigation section for all pages.
fn title_and_nav(path_to_featured : &str, path_to_all_posts : &str, path_to_rss : &str, title : &str) -> Div {
    div!([class("container")][
        header!([class("py-3 pt-5")][line_height("1"), border_bottom("1px solid #e5e5e5")][
            div!([class("row flex-nowrap justify-content-between align-items-center")][
                div!([class("col-12 text-center")][
                    a!([class("text-dark"), href("#")][font_size("2.25rem")][
                        text![title] 
                    ])
                ])
            ])
        ]),
        nav!([class("py-1 mb-2")][border_bottom("1px solid #e5e5e5")][
            div!([class("row")][
                div!([class("p-2 col-md-3 text-center")][
                    a!([href(path_to_featured)][
                        text!["Featured"]
                    ])
                ]),
                div!([class("p-2 col-md-3 text-center")][
                    a!([href(path_to_all_posts)][
                        text!["All Posts"]
                    ])
                ]),
                div!([class("p-2 col-md-3 text-center")][
                    a!([href("https://github.com/aaron-jack-manning/blog")][
                        text!["Source"]
                    ])
                ]),
                div!([class("p-2 col-md-3 text-center")][
                    a!([href(path_to_rss)][
                        text!["RSS"]
                    ])
                ])
            ])
        ])
    ])
}

// Converts a post to the preview card that shows up on the featured page.
fn post_to_card(post : &Post) -> Div {
    div!([class("col-md-6")][
        div!([class("row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm position-relative mr-1 ml-1")][
            div!([class("col p-4 d-flex flex-column position-static")][
                h3!([class("mb-0")][
                    text![&post.name]
                ]),
                div!([class("mb-1")][
                    text![&post.date.to_string()]
                ]),
                p!([class("mb-auto")][
                    text![&post.preview]
                ]),
                a!([href(&format!("posts/{}", post.api_name)), class("stretched-link")][
                    text!["Continue reading"]
                ])
            ])
        ])
    ])
}

// Page for each post.
fn post(post : &Post, page_header : &str) -> Html {
    html!([lang("en")][
        head(&post.name, "../../"),
        body!([][font()][
            title_and_nav("../../", "../../all-posts", "../../rss/index.xml", page_header),
            main!([class("container")][
                div!([class("row g-5")][
                    div!([class("col-md-12")][
                         text![&post.html.to_string()]
                    ])
                ])
            ]),
            footer()
        ])
    ])
}

// Home page.
fn home(title : &str, latest_post : &Post, first_featured : &Post, second_featured : &Post) -> Html {
    html!([lang("en")][
        head(title, ""),
        body!([][font()][
            title_and_nav("#", "all-posts", "rss/index.xml", title),
            main!([class("container")][
                div!([class("row")][
                     post_to_card(first_featured),
                     post_to_card(second_featured)
                ]),
                div!([class("row g-5")][
                    div!([class("col-md-12")][
                        h3!([class("pb-4 pt-4 mb-4 border-bottom border-top")][
                            text!["Latest Post"]
                        ]),
                        text![&latest_post.html.to_string()]
                    ])
                ])
            ]),
            footer()
        ])
    ])
}

// Post preview for all posts list.
fn post_preview(post : &Post) -> Article {
    article!([][margin_bottom("4rem"), margin_top("3rem")][
        h2!([][font_size("2.5rem")][
            a!([href(&format!("../posts/{}", &post.api_name))][text_decoration("none"), color("black")][
               text![&post.name]
            ])
        ]),
        time!([][display("inline-block"), margin_bottom("1.25rem"), color("#727272")][
            text![&post.date.to_string()]
        ]),
        p!([
           text![&post.preview]
        ])
    ])
}

// All posts page.
fn all_posts(posts : &Vec<Post>, title : &str) -> Html {
    let posts : Vec<String> = posts.iter().map(|p| post_preview(p).to_string()).collect();

    let mut posts_div =
        div!([class("col-md-12")][]);

    for post in posts {
        posts_div.child(text![&post]);
    }

    html!([lang("en")][
        head("All Posts", "../"),
        body!([][font()][
            title_and_nav("../", "#", "../rss/index.xml", title),
            main!([class("container")][
                div!([class("row g-5")][
                     posts_div
                ])
            ]),
            footer() 
        ])
    ])
}

fn main() {
    let page_header = "Aaron Manning's Blog";
    let base_url = "blog.aaronmanning.net";

    let root = env::args().nth(1).unwrap();
    let root = path::PathBuf::from(root);

    // Traverse folder for markdown files.
    let md_files : Vec<path::PathBuf> =
        fs::read_dir(&root)
        .unwrap()
        .map(|entry| entry.unwrap().path())
        .filter(|path| path.extension() == Some(&ffi::OsString::from("md")))
        .filter(|path| !path.file_name().unwrap().to_str().unwrap().starts_with("_"))
        .collect();

    // Parse markdown to generate posts with HTML.
    let mut posts : Vec<Post> =
        md_files
        .into_iter()
        .map(|n| Post::new(path::PathBuf::from(n), false))
        .collect();

    posts.sort_by_key(|p| p.date.clone());
    posts.reverse();

    // Generate all posts page.
    let all_posts = all_posts(&posts, page_header).to_string();

    // Generate home page.
    let top_level = Post::new(posts[0].path.clone(), true);
    let home = home(page_header, &top_level, &posts[1], &posts[2]).to_string();

    // Generate RSS.
    let rss = rss::generate_rss(&posts, page_header, base_url);

    // Convert posts to complete strings with other parts of the page and include api name.
    let posts_html : Vec<(String, String)> =
        posts
        .iter()
        .map(|p| (p.api_name.clone(), post(p, page_header).to_string()))
        .collect();
    
    // Write all pages to corresponding files.

    fs::write(root.join("website/index.html"), home).expect("Unable to write home page to file.");
    fs::write(root.join("website/all-posts/index.html"), all_posts).expect("Unable to write all posts page to file.");
    fs::write(root.join("website/rss/index.xml"), rss).expect("Unable to write RSS to file.");

    for (api_name, post) in posts_html {
        let parent_folder = path::PathBuf::from(format!("website/posts/{}", api_name));
        let parent_folder = root.join(&parent_folder);

        if !parent_folder.exists() {
            fs::create_dir(&parent_folder).expect("Failed to create folder for post.");
        }

        fs::write(parent_folder.join("index.html"), post).expect("Failed to write post to folder.")

    }
}
