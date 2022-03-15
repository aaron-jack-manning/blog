open General
open Attributes open Css open Nodes open CssConversions open View

open BlogPost open Posts

let generate_rss_for_post (post : blog_post) : string =
    let open String in
    concat [
        "<item><title>";
        post.title;
        "</title><link>https://stars-and-bars.net/posts/";
        post.api_name;
        "</link><description>";
        post.preview;
        "</description><pubDate>";
        of_int post.date.date;
        " ";
        month_to_string post.date.month;
        " ";
        of_int post.date.year;
        "</pubDate><content:encoded><![CDATA[";
        view (blog_post_to_html_node post false);
        "]]></content:encoded></item>"
    ]

let generate_rss (posts : blog_post list) : string =
    let open String in
    concat [
        "<?xml version=\"1.0\" encoding=\"UTF-8\" ?><rss xmlns:content=\"http://purl.org/rss/1.0/modules/content/\" version=\"2.0\"><channel><title>Stars and Bars</title><link>https://stars-and-bars.net/</link><description>A blog about mathematics and computing.</description>";
        posts
        |> List.map (fun x -> generate_rss_for_post x)
        |> List.foldl (fun s m -> s + m) "";
        "</channel></rss>"
    ]