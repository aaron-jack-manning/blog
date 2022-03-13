open General

open Css
open Nodes

let css_style_to_string (style : css_style) : string =
    String.(style.property + ":" + style.value + ";")

let rec css_styles_to_string (styles : css_style list) : string =
    match styles with
    | [] -> ""
    | [x] -> css_style_to_string x
    | x :: xs -> String.(css_style_to_string x + " " + css_styles_to_string xs)


(* This always returns a text node. Better design would be to have the style constructor take in a list of css_class only and then convert to Text html_node within that function. *)
let css_class_text (style_group : style_group) : string =
    String.(style_group.name + " {" + css_styles_to_string style_group.styles + "}")


