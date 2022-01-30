open General

open Attributes open Css open Nodes

let attribute_to_string (attribute : html_attribute) : string =
    String.(attribute.key + "=\"" + attribute.value + "\"")

let attributes_to_string (attributes : html_attribute list) : string =
    (attributes
    |> List.foldl (fun s m -> String.(s + " " + (attribute_to_string m))) "")


let rec view (html : html_node) : string =
    match html with
    | Parent (tag, attributes, children) ->
        String.("<" + tag + (attributes_to_string attributes) + ">" + (view_many children) + "</" + tag + ">")
    | Void (tag, attributes) ->
        String.("<" + tag + (attributes_to_string attributes) + ">")
    | Text (content) ->
        content
and view_many (children : html_node list) : string =
    let open String in
    children
    |> List.foldl (fun s m -> s + view m) ""

let rec view_page (html : html_node) : string =
    String.("<!DOCTYPE html>" + view html)



let inline_maths (latex : string) : string =
    view (Nodes.span [class_ "math inline"] [
        text latex
    ])

let bold (content : string) : string =
    view (b [] [text content])

let italics (content : string) : string =
    view (i [] [text content])