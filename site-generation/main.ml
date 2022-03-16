open General
open Attributes open Css open Nodes open CssConversions open View

open BlogPost
open Posts
open Rss

(* Posts are ordered most recent first. *)
let posts = [
        exploring_complex_functions_through_animation;
        leveraging_self_similarity_in_problem_solving;
        the_beauty_of_diffie_hellman;
        what_does_area_have_to_do_with_gradient;
        solving_a_hard_problem_by_solving_an_easy_one;
        an_elegant_solution_to_an_ugly_integral;
        a_better_approach_to_polynomial_division;
    ]

let latest = match List.head posts with
    | Some data -> data
    | None -> Fatal.failwith "there must be at least one post"

let _ =
    File.write_all_text
        "website/index.html" 
        (view_page (
            home_page
                latest
                {
                    post = what_does_area_have_to_do_with_gradient;
                    description = "New Here? Try This"
                }
                {
                    post = the_beauty_of_diffie_hellman;
                    description = "Not interested in Mathematics?"
                }
            )
        )

let _ =
    File.write_all_text
        "website/all-posts/index.html"
        (view_page (all_posts_page posts))

let _ =
    File.write_all_text
        "website/rss/index.xml"
        (generate_rss posts)

let _ =
    posts
    |> List.map (fun x -> (x.api_name, view_page (post_page x)) )
    |> List.map (fun (api_name, content) -> File.write_all_text String.("website/posts/" + api_name + "/index.html") content)

let _ =
    File.write_all_text
        "website/stylesheet.css"
        Stylesheet.css