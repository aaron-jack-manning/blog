open General

open BlogPost open PostContent

let generate_rss_channel (post : blog_post) : string =
    let open String in
    "<channel><title>Stars and Bars</title><link>https://stars-and-bars.net/</link><description>A blog about mathematics and computing.</description><item><title>"
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
    "</description></item></channel>"

let generate_rss (posts : blog_post list) : string =
    let open String in
    let posts_string =
        posts
        |> List.map (fun x -> generate_rss_channel x)
        |> List.foldl (fun s m -> s + m) ""
    in
    "<?xml version=\"1.0\" encoding=\"UTF-8\" ?><rss version=\"2.0\">" + posts_string + "</rss>"
