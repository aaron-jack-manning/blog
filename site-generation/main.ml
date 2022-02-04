open General

open View
open BlogPost
open PostContent
open Rss


let home_page = view_page (home_page latest what_does_area_have_to_do_with_gradient the_beauty_of_diffie_hellman)
let _ = File.write_all_text "website/index.html" home_page

let all_posts = view_page (all_posts_page posts)
let _ = File.write_all_text "website/all-posts/index.html" all_posts

let rss = generate_rss posts
let _ = File.write_all_text "website/rss/index.xml" rss

let _ =
    posts
    |> List.map (fun x -> (x.api_name, view_page (post_page x)) )
    |> List.map (fun (api_name, content) -> File.write_all_text String.("website/posts/" + api_name + "/index.html") content)