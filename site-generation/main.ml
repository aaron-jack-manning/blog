open General

open Attributes open Css open CssConversions open Nodes open View open BlogPost open PostContent open Rss




(* Generate Delta: *)

(* let _ = Terminal.printf "Home Page:\n%s\n\n\n" (view_page (home_page latest what_does_area_have_to_do_with_gradient the_beauty_of_diffie_hellman))

let _ = Terminal.printf "All Posts Page:\n%s\n\n\n" (view_page (all_posts_page posts))

let _ = Terminal.printf "Latest Post Page:\n%s\n\n" (view_page (post_page latest))

let _ = Terminal.printf "RSS:\n%s\n\n\n" (generate_rss posts) *)


(* Generate Full Site: *)

let _ = Terminal.printf "Home Page:\n%s\n\n\n" (view_page (home_page latest what_does_area_have_to_do_with_gradient the_beauty_of_diffie_hellman))

let _ = Terminal.printf "All Posts Page:\n%s\n\n\n" (view_page (all_posts_page posts))

let _ = Terminal.printf "leveraging_self_similarity_in_problem_solving:\n%s\n\n" (view_page (post_page leveraging_self_similarity_in_problem_solving))
let _ = Terminal.printf "the_beauty_of_diffie_hellman:\n%s\n\n" (view_page (post_page the_beauty_of_diffie_hellman))
let _ = Terminal.printf "what_does_area_have_to_do_with_gradient:\n%s\n\n" (view_page (post_page what_does_area_have_to_do_with_gradient))
let _ = Terminal.printf "solving_a_hard_problem_by_solving_an_easy_one:\n%s\n\n" (view_page (post_page solving_a_hard_problem_by_solving_an_easy_one))
let _ = Terminal.printf "an_elegant_solution_to_an_ugly_integral:\n%s\n\n" (view_page (post_page an_elegant_solution_to_an_ugly_integral))
let _ = Terminal.printf "a_better_approach_to_polynomial_division:\n%s\n\n" (view_page (post_page a_better_approach_to_polynomial_division))

let _ = Terminal.printf "RSS:\n%s\n\n\n" (generate_rss posts)