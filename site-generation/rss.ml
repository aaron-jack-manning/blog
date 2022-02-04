open General

open BlogPost
open PostContent

let generate_rss_for_post (post : blog_post) : string =
    let open String in
    "<item><title>"
    +
    post.title
    +
    "</title><link>https://stars-and-bars.net/posts/"
    +
    post.api_name
    +
    "</link><description>"
    +
    post.preview
    +
    "</description><pubDate>"
    + 
    of_int post.date.date + " " + month_to_string post.date.month + " " + of_int post.date.year
    +
    "</pubDate></item>"

let generate_rss (posts : blog_post list) : string =
    let open String in
    "<?xml version=\"1.0\" encoding=\"UTF-8\" ?><rss version=\"2.0\"><channel><title>Stars and Bars</title><link>https://stars-and-bars.net/</link><description>A blog about mathematics and computing.</description>"
    + (
        posts
        |> List.map (fun x -> generate_rss_for_post x)
        |> List.foldl (fun s m -> s + m) ""
    ) +
    "</channel></rss>"