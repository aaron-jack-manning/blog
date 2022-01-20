open FromStdlib open Exposed

open Attributes open Css open CssConversions open Nodes open View open BlogPost open PostContent open Rss




let _ = printf "%s\n\n\n" (view_page (home_page latest what_does_area_have_to_do_with_gradient the_beauty_of_diffie_hellman))

let _ = printf "%s\n\n\n" (view_page (all_posts_page posts))

let _ = printf "%s\n\n" (view_page (post_page latest))

let _ = printf "%s\n\n\n" (generate_rss posts)

