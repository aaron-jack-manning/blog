open General

open Nodes
open Css
open CssConversions
open View
open Attributes


type month = January | February | March | April | May | June | July | August | September | October | November | December

let month_to_string = function
    | January -> "January"
    | February -> "February"
    | March -> "March"
    | April -> "April"
    | May -> "May"
    | June -> "June"
    | July -> "July"
    | August -> "August"
    | September -> "September"
    | October -> "October"
    | November -> "November"
    | December -> "December"

type date =
    {
        date : int;
        month : month;
        year : int;
    }

type blog_post_content_element =
    | Subtitle of string
    | Paragraph of string
    | Blockquote of string
    | Code of string list
    | Display_maths of string
    | IFrame of string
    | Image of string
    | Divider

type blog_post_content = blog_post_content_element list

type blog_post =
    {
        title : string;
        api_name : string;
        date : date;
        preview : string;
        content : blog_post_content;
    }

let blog_post_content_element_to_html_node (home_page : bool) = function
    | Subtitle subtitle ->
        h3 [] [
            text subtitle
        ]
    | Paragraph paragraph ->
        p [] [
            text paragraph
        ]
    | Blockquote quote ->
        blockquote [] [
            text quote
        ]
    | Code codelines -> (* This should really create a list of text html nodes with some breaks in it (void nodes) *)
        let codetext =
            codelines
            |> List.foldl (fun s m ->
                if s = "" then
                    m
                else
                    String.(s + "<br>" + m)            
            ) ""
        in

        pre [] [
            code [] [
                text codetext
            ]
        ]
    | Display_maths latex ->
        p [] [
            Nodes.span [class_ "math display"] [
                text latex
            ]
        ]
    | IFrame link ->
        iframe [src link; width "100%"] []
    | Image name ->
        if home_page then
            img [src String.("images/" + name)]
        else
            img [src String.("../../images/" + name)]
    | Divider ->
        hr []

let blog_post_content_to_html_nodes (home_page : bool) = List.map (fun x -> blog_post_content_element_to_html_node home_page x)

let date_to_string (date : date) =
    String.(month_to_string date.month + " " + of_int date.date + ", " + of_int date.year)

let blog_post_to_html_node (post : blog_post) (home_page : bool) =
    article [] (List.(@) [
        h2 [] [
            text post.title
        ];
        time [] [
            text (date_to_string post.date)
        ];
    ] (blog_post_content_to_html_nodes home_page post.content))

let blog_post_to_card (post : blog_post) (post_type : string) =
    div [class_ "col-md-6"] [
        div [class_ "row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm position-relative mr-1 ml-1"] [
            div [class_ "col p-4 d-flex flex-column position-static"] [
                strong [class_ "d-inline-block mb-2 text-success"] [
                    text post_type
                ];
                h3 [class_ "mb-0"] [
                    text post.title
                ];
                div [class_ "mb-1"] [
                    text (date_to_string post.date)
                ];
                p [class_ "mb-auto"] [
                    text (post.preview)
                ];
                a [href String.("posts/" + post.api_name); class_ "stretched-link"] [
                    text "Continue reading"
                ];
            ]
        ]
    ]

let standard_head (page_title : string) (path_to_root : string) =
    head [] [
            meta [Attributes.charset "utf-8"];
            meta [name "viewport"; Attributes.content "width=device-width, initial-scale=1"];
            meta [name "description"; Attributes.content "A blog about random things related to mathematics and computing."];
            meta [name "author"; Attributes.content "Aaron Manning"];
            meta [name "keywords"; Attributes.content "mathematics, math, maths, programming, education"];
            Nodes.title [] [
                text page_title
            ];
            link [rel "stylesheet"; href "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"];
            link [rel "stylesheet"; href String.(path_to_root + "stylesheet.css")];
            link [rel "icon"; type_ "image/png"; href String.(path_to_root + "images/favicon.png")];
            script [type_ "text/javascript"; src "https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-chtml-full.js"] [];
        ]

let standard_title_and_nav (path_to_featured : string) (path_to_all_posts : string) (path_to_rss : string) =
    div [class_ "container"] [
        header [class_ "py-3 pt-5"] [
            div [class_ "row flex-nowrap justify-content-between align-items-center"] [
                div [class_ "col-12 text-center"] [
                    a [class_ "text-dark"; href "#"] [
                        text "Stars and Bars"
                    ]
                ]
            ]
        ];
        nav [class_ "py-1 mb-2"] [
            div [class_ "row"] [
                div [class_ "p-2 col-md-3 text-center"] [
                    a [href path_to_featured] [
                        text "Featured"
                    ]
                ];
                div [class_ "p-2 col-md-3 text-center"] [
                    a [href path_to_all_posts] [
                        text "All Posts"
                    ]
                ];
                div [class_ "p-2 col-md-3 text-center"] [
                    a [href "https://github.com/aaron-jack-manning/stars-and-bars-blog"] [
                        text "Source"
                    ]
                ];
                div [class_ "p-2 col-md-3 text-center"] [
                    a [href path_to_rss] [
                        text "RSS"
                    ]
                ];
            ]
        ];
    ]

let standard_footer =
    footer [] [
        p [] [
            text "By Aaron Manning"
        ];
        p [] [
            a [href "#"] [
                text "Back to top"
            ]
        ];
    ]

let home_page (latest_post : blog_post) (first_featured_post : blog_post) (second_featured_post : blog_post) =
    html [lang "en"] [
        standard_head "Stars and Bars" "";
        body [] [
            standard_title_and_nav "#" "all-posts" "rss/index.xml";
            main [class_ "container"] [
                div [class_ "row"] [
                    blog_post_to_card first_featured_post "New Here? Try This";
                    blog_post_to_card second_featured_post "Not interested in Mathematics?"
                ];
                div [class_ "row g-5"] [
                    div [class_ "col-md-12"] [
                        h3 [class_ "pb-4 pt-4 mb-4 border-bottom border-top"] [
                            text "Latest Post"
                        ];
                        blog_post_to_html_node latest_post true;
                    ]
                ];
            ];
            standard_footer;
        ];
    ]

let post_page (post : blog_post) =
    html [lang "en"] [
        standard_head post.title "../../";
        body [] [
            standard_title_and_nav "../../" "../../all-posts" "../../rss/index.xml";
            main [class_ "container"] [
                div [class_ "row g-5"] [
                    div [class_ "col-md-12"] [
                        blog_post_to_html_node post false;
                    ]
                ]
            ];
            standard_footer;
        ];
    ]

(* This is designed to model the top of a post anyway. *)
let blog_post_preview (post : blog_post) : html_node =
    article [] [
        h2 [] [
            a [href String.("../posts/" + post.api_name)] [
                text post.title
            ]
        ];
        time [] [
            text (date_to_string post.date)
        ];
        p [] [
            text post.preview
        ];
    ]


let all_posts_page (posts : blog_post list) =
    html [lang "en"] [
        standard_head "All Posts" "../";
        body [] [
            standard_title_and_nav "../" "#" "../rss/index.xml";
            main [class_ "container"] [
                div [class_ "row g-5"] [
                    div [class_ "col-md-12"] (
                        posts 
                        |> List.map blog_post_preview
                    )
                ]
            ];
            standard_footer;
        ];
    ]
