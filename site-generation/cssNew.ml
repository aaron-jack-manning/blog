(* This file is not part of compilation, and just represents a proof of concept for creating better type checking on CSS properties. *)




open FromStdlib open Exposed

open Attributes

(* Underlying types for style elements, and conversion functions to strings. *)
type length_unit = Cm | Mm | Q | In | Pc | Pt | Px | Em | Ex | Ch | Rem | Lh | Vw | Vh | Vmin | Vmax
let length_unit_to_string = function Cm -> "cm" | Mm -> "mm" | Q -> "Q" | In -> "in" | Pc -> "pc" | Pt -> "pt" | Px -> "px" | Em -> "em" | Ex -> "ex" | Ch -> "ch" | Rem -> "rem" | Lh -> "lh" | Vw -> "vw" | Vh -> "vh" | Vmin -> "vmin" | Vmax -> "vmax"

type color =
    {
        r : int;
        g : int;
        b : int;
        a : int;
    }

let color_to_string (color : color) =
    String.(
        "rgba("
        + of_int color.r
        + ","
        + of_int color.g
        + ","
        + of_int color.b
        + ","
        + of_int color.a
        + ")"
    )

let length_to_string (quantity : float) (unit : length_unit) =
    String.(of_float quantity + (length_unit_to_string unit))
    



type style =
    | Margin_top of float * length_unit
    | Color of color
(* The rest need to be added, from  HTML/CSS spec. *)

let style_string = function
    | Margin_top (quantity, unit) ->
        String.("margin-top:" + length_to_string quantity unit + ";")
    | Color color ->
        String.("color:" + color_to_string color + ";")


type css_class =
    {
        name : string;
        styles : style list;
    }

let create_class (name : string) (styles : style list) : css_class =
    {
        name = name;
        styles = styles;
    }


let css_class_string (css : css_class) : string =
    String.("." + css.name + "{" + (css.styles |> List.foldl (fun s m -> s + style_string m) "") + "}")

let rec classes_helper (classes : css_class list) (acc : string) : html_attribute =
    match classes with
    | [] -> { key = "class"; value = "" }
    | [{ name = name; styles = _}] -> { key = "class"; value = String.(acc + name) }
    | { name = name; styles = _ } :: xs -> classes_helper xs String.(acc + name + " ")

(* Creates a class attribute from a list of classes. *)
let classes (classes : css_class list) : html_attribute = classes_helper classes ""