open FromStdlib open Exposed

open Attributes

(* HTML Node type. *)
type html_node =
    | Parent of string * html_attribute list * html_node list
    | Void of string * html_attribute list
    | Text of string


(* Text constructor. *)
let text = (fun x -> Text x)


(* Void node constructors. *)
let area (attributes : html_attribute list) : html_node =
    Void (
        "area",
        attributes
    )

let base (attributes : html_attribute list) : html_node =
    Void (
        "base",
        attributes
    )

let br (attributes : html_attribute list) : html_node =
    Void (
        "br",
        attributes
    )

let col (attributes : html_attribute list) : html_node =
    Void (
        "col",
        attributes
    )

let embed (attributes : html_attribute list) : html_node =
    Void (
        "embed",
        attributes
    )

let hr (attributes : html_attribute list) : html_node =
    Void (
        "hr",
        attributes
    )

let img (attributes : html_attribute list) : html_node =
    Void (
        "img",
        attributes
    )

let input (attributes : html_attribute list) : html_node =
    Void (
        "input",
        attributes
    )

let link (attributes : html_attribute list) : html_node =
    Void (
        "link",
        attributes
    )

let meta (attributes : html_attribute list) : html_node =
    Void (
        "meta",
        attributes
    )

let param (attributes : html_attribute list) : html_node =
    Void (
        "param",
        attributes
    )

let source (attributes : html_attribute list) : html_node =
    Void (
        "source",
        attributes
    )

let track (attributes : html_attribute list) : html_node =
    Void (
        "track",
        attributes
    )

let wbr (attributes : html_attribute list) : html_node =
    Void (
        "wbr",
        attributes
    )


(* Parent node constructors. *)
let a (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "a",
        attributes,
        children
    )

let abbr (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "abbr",
        attributes,
        children
    )

let address (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "address",
        attributes,
        children
    )

let article (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "article",
        attributes,
        children
    )

let aside (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "aside",
        attributes,
        children
    )

let audio (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "audio",
        attributes,
        children
    )

let b (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "b",
        attributes,
        children
    )

let bdi (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "bdi",
        attributes,
        children
    )

let bdo (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "bdo",
        attributes,
        children
    )

let blockquote (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "blockquote",
        attributes,
        children
    )

let body (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "body",
        attributes,
        children
    )

let button (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "button",
        attributes,
        children
    )

let canvas (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "canvas",
        attributes,
        children
    )

let caption (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "caption",
        attributes,
        children
    )

let cite (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "cite",
        attributes,
        children
    )

let code (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "code",
        attributes,
        children
    )

let colgroup (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "colgroup",
        attributes,
        children
    )

let datalist (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "datalist",
        attributes,
        children
    )

let dd (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "dd",
        attributes,
        children
    )

let del (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "del",
        attributes,
        children
    )

let details (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "details",
        attributes,
        children
    )

let dfn (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "dfn",
        attributes,
        children
    )

let dialog (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "dialog",
        attributes,
        children
    )

let div (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "div",
        attributes,
        children
    )

let dl (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "dl",
        attributes,
        children
    )

let dt (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "dt",
        attributes,
        children
    )

let em (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "em",
        attributes,
        children
    )

let fieldset (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "fieldset",
        attributes,
        children
    )

let figcaption (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "figcaption",
        attributes,
        children
    )

let figure (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "figure",
        attributes,
        children
    )

let footer (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "footer",
        attributes,
        children
    )

let form (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "form",
        attributes,
        children
    )

let h1 (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "h1",
        attributes,
        children
    )

let h2 (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "h2",
        attributes,
        children
    )

let h3 (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "h3",
        attributes,
        children
    )

let h4 (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "h4",
        attributes,
        children
    )

let h5 (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "h5",
        attributes,
        children
    )

let h6 (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "h6",
        attributes,
        children
    )

let head (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "head",
        attributes,
        children
    )

let header (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "header",
        attributes,
        children
    )

let html (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "html",
        attributes,
        children
    )

let i (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "i",
        attributes,
        children
    )

let iframe (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "iframe",
        attributes,
        children
    )

let ins (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "ins",
        attributes,
        children
    )

let kbd (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "kbd",
        attributes,
        children
    )

let label (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "label",
        attributes,
        children
    )

let legend (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "legend",
        attributes,
        children
    )

let li (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "li",
        attributes,
        children
    )

let main (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "main",
        attributes,
        children
    )

let map (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "map",
        attributes,
        children
    )

let mark (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "mark",
        attributes,
        children
    )

let meter (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "meter",
        attributes,
        children
    )

let nav (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "nav",
        attributes,
        children
    )

let noscript (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "noscript",
        attributes,
        children
    )

let object_ (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "object",
        attributes,
        children
    )

let ol (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "ol",
        attributes,
        children
    )

let optgroup (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "optgroup",
        attributes,
        children
    )

let option (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "option",
        attributes,
        children
    )

let output (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "output",
        attributes,
        children
    )

let p (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "p",
        attributes,
        children
    )

let pre (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "pre",
        attributes,
        children
    )

let progress (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "progress",
        attributes,
        children
    )

let q (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "q",
        attributes,
        children
    )

let rp (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "rp",
        attributes,
        children
    )

let rt (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "rt",
        attributes,
        children
    )

let ruby (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "ruby",
        attributes,
        children
    )

let s (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "s",
        attributes,
        children
    )

let samp (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "samp",
        attributes,
        children
    )

let script (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "script",
        attributes,
        children
    )

let section (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "section",
        attributes,
        children
    )

let select (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "select",
        attributes,
        children
    )

let small (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "small",
        attributes,
        children
    )

let span (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "span",
        attributes,
        children
    )

let strong (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "strong",
        attributes,
        children
    )

let style (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "style",
        attributes,
        children
    )

let sub (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "sub",
        attributes,
        children
    )

let summary (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "summary",
        attributes,
        children
    )

let sup (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "sup",
        attributes,
        children
    )

let table (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "table",
        attributes,
        children
    )

let tbody (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "tbody",
        attributes,
        children
    )

let td (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "td",
        attributes,
        children
    )

let textarea (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "textarea",
        attributes,
        children
    )

let tfoot (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "tfoot",
        attributes,
        children
    )

let th (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "th",
        attributes,
        children
    )

let thead (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "thead",
        attributes,
        children
    )

let time (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "time",
        attributes,
        children
    )

let title (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "title",
        attributes,
        children
    )

let tr (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "tr",
        attributes,
        children
    )

let u (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "u",
        attributes,
        children
    )

let ul (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "ul",
        attributes,
        children
    )

let var (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "var",
        attributes,
        children
    )

let video (attributes : html_attribute list) (children : html_node list) : html_node =
    Parent (
        "video",
        attributes,
        children
    )





