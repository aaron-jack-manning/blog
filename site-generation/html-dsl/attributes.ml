open General


type html_attribute =
    {
        key : string;
        value : string;
    }

let custom_attribute (key : string) (value : string) : html_attribute =
    {
        key = key;
        value = value;
    }



let accept (value : string)  : html_attribute = 
    {
        key = "accept";
        value = value;
    }

let accept_charset (value : string)  : html_attribute =
    {
        key = "accept-charset";
        value = value;
    }

let accesskey (value : string)  : html_attribute =
    {
        key = "accesskey";
        value = value;
    }

let action (value : string)  : html_attribute =
    {
        key = "action";
        value = value;
    }

let align (value : string)  : html_attribute =
    {
        key = "align";
        value = value;
    }

let alt (value : string)  : html_attribute =
    {
        key = "alt";
        value = value;
    }

let async (value : string)  : html_attribute =
    {
        key = "async";
        value = value;
    }

let autocomplete (value : string)  : html_attribute =
    {
        key = "autocomplete";
        value = value;
    }

let autofocus (value : string)  : html_attribute =
    {
        key = "autofocus";
        value = value;
    }

let autoplay (value : string)  : html_attribute =
    {
        key = "autoplay";
        value = value;
    }

let bgcolor (value : string)  : html_attribute =
    {
        key = "bgcolor";
        value = value;
    }

let border (value : string)  : html_attribute =
    {
        key = "border";
        value = value;
    }

let charset (value : string)  : html_attribute =
    {
        key = "charset";
        value = value;
    }

let checked (value : string)  : html_attribute =
    {
        key = "checked";
        value = value;
    }

let cite (value : string)  : html_attribute =
    {
        key = "cite";
        value = value;
    }

let class_ (value : string)  : html_attribute =
    {
        key = "class";
        value = value;
    }

let color (value : string)  : html_attribute =
    {
        key = "color";
        value = value;
    }

let cols (value : string)  : html_attribute =
    {
        key = "cols";
        value = value;
    }

let colspan (value : string)  : html_attribute =
    {
        key = "colspan";
        value = value;
    }

let content (value : string)  : html_attribute =
    {
        key = "content";
        value = value;
    }

let contenteditable (value : string)  : html_attribute =
    {
        key = "contenteditable";
        value = value;
    }

let controls (value : string)  : html_attribute =
    {
        key = "controls";
        value = value;
    }

let coords (value : string)  : html_attribute =
    {
        key = "coords";
        value = value;
    }

let data (value : string)  : html_attribute =
    {
        key = "data";
        value = value;
    }

let data_ (value : string)  : html_attribute =
    {
        key = "data-*";
        value = value;
    }

let datetime (value : string)  : html_attribute =
    {
        key = "datetime";
        value = value;
    }

let default (value : string)  : html_attribute =
    {
        key = "default";
        value = value;
    }

let defer (value : string)  : html_attribute =
    {
        key = "defer";
        value = value;
    }

let dir (value : string)  : html_attribute =
    {
        key = "dir";
        value = value;
    }

let dirname (value : string)  : html_attribute =
    {
        key = "dirname";
        value = value;
    }

let disabled (value : string)  : html_attribute =
    {
        key = "disabled";
        value = value;
    }

let download (value : string)  : html_attribute =
    {
        key = "download";
        value = value;
    }

let draggable (value : string)  : html_attribute =
    {
        key = "draggable";
        value = value;
    }

let enctype (value : string)  : html_attribute =
    {
        key = "enctype";
        value = value;
    }

let for_ (value : string)  : html_attribute =
    {
        key = "for";
        value = value;
    }

let form (value : string)  : html_attribute =
    {
        key = "form";
        value = value;
    }

let formaction (value : string)  : html_attribute =
    {
        key = "formaction";
        value = value;
    }

let headers (value : string)  : html_attribute =
    {
        key = "headers";
        value = value;
    }

let height (value : string)  : html_attribute =
    {
        key = "height";
        value = value;
    }

let hidden (value : string)  : html_attribute =
    {
        key = "hidden";
        value = value;
    }

let high (value : string)  : html_attribute =
    {
        key = "high";
        value = value;
    }

let href (value : string)  : html_attribute =
    {
        key = "href";
        value = value;
    }

let hreflang (value : string)  : html_attribute =
    {
        key = "hreflang";
        value = value;
    }

let http_equiv (value : string)  : html_attribute =
    {
        key = "http-equiv";
        value = value;
    }

let id (value : string)  : html_attribute =
    {
        key = "id";
        value = value;
    }

let ismap (value : string)  : html_attribute =
    {
        key = "ismap";
        value = value;
    }

let kind (value : string)  : html_attribute =
    {
        key = "kind";
        value = value;
    }

let label (value : string)  : html_attribute =
    {
        key = "label";
        value = value;
    }

let lang (value : string)  : html_attribute =
    {
        key = "lang";
        value = value;
    }

let list (value : string)  : html_attribute =
    {
        key = "list";
        value = value;
    }

let loop (value : string)  : html_attribute =
    {
        key = "loop";
        value = value;
    }

let low (value : string)  : html_attribute =
    {
        key = "low";
        value = value;
    }

let max (value : string)  : html_attribute =
    {
        key = "max";
        value = value;
    }

let maxlength (value : string)  : html_attribute =
    {
        key = "maxlength";
        value = value;
    }

let media (value : string)  : html_attribute =
    {
        key = "media";
        value = value;
    }

let method_ (value : string)  : html_attribute =
    {
        key = "method";
        value = value;
    }

let min (value : string)  : html_attribute =
    {
        key = "min";
        value = value;
    }

let multiple (value : string)  : html_attribute =
    {
        key = "multiple";
        value = value;
    }

let muted (value : string)  : html_attribute =
    {
        key = "muted";
        value = value;
    }

let name (value : string)  : html_attribute =
    {
        key = "name";
        value = value;
    }

let novalidate (value : string)  : html_attribute =
    {
        key = "novalidate";
        value = value;
    }

let onabort (value : string)  : html_attribute =
    {
        key = "onabort";
        value = value;
    }

let onafterprint (value : string)  : html_attribute =
    {
        key = "onafterprint";
        value = value;
    }

let onbeforeprint (value : string)  : html_attribute =
    {
        key = "onbeforeprint";
        value = value;
    }

let onbeforeunload (value : string)  : html_attribute =
    {
        key = "onbeforeunload";
        value = value;
    }

let onblur (value : string)  : html_attribute =
    {
        key = "onblur";
        value = value;
    }

let oncanplay (value : string)  : html_attribute =
    {
        key = "oncanplay";
        value = value;
    }

let oncanplaythrough (value : string)  : html_attribute =
    {
        key = "oncanplaythrough";
        value = value;
    }

let onchange (value : string)  : html_attribute =
    {
        key = "onchange";
        value = value;
    }

let onclick (value : string)  : html_attribute =
    {
        key = "onclick";
        value = value;
    }

let oncontextmenu (value : string)  : html_attribute =
    {
        key = "oncontextmenu";
        value = value;
    }

let oncopy (value : string)  : html_attribute =
    {
        key = "oncopy";
        value = value;
    }

let oncuechange (value : string)  : html_attribute =
    {
        key = "oncuechange";
        value = value;
    }

let oncut (value : string)  : html_attribute =
    {
        key = "oncut";
        value = value;
    }

let ondblclick (value : string)  : html_attribute =
    {
        key = "ondblclick";
        value = value;
    }

let ondrag (value : string)  : html_attribute =
    {
        key = "ondrag";
        value = value;
    }

let ondragend (value : string)  : html_attribute =
    {
        key = "ondragend";
        value = value;
    }

let ondragenter (value : string)  : html_attribute =
    {
        key = "ondragenter";
        value = value;
    }

let ondragleave (value : string)  : html_attribute =
    {
        key = "ondragleave";
        value = value;
    }

let ondragover (value : string)  : html_attribute =
    {
        key = "ondragover";
        value = value;
    }

let ondragstart (value : string)  : html_attribute =
    {
        key = "ondragstart";
        value = value;
    }

let ondrop (value : string)  : html_attribute =
    {
        key = "ondrop";
        value = value;
    }

let ondurationchange (value : string)  : html_attribute =
    {
        key = "ondurationchange";
        value = value;
    }

let onemptied (value : string)  : html_attribute =
    {
        key = "onemptied";
        value = value;
    }

let onended (value : string)  : html_attribute =
    {
        key = "onended";
        value = value;
    }

let onerror (value : string)  : html_attribute =
    {
        key = "onerror";
        value = value;
    }

let onfocus (value : string)  : html_attribute =
    {
        key = "onfocus";
        value = value;
    }

let onhashchange (value : string)  : html_attribute =
    {
        key = "onhashchange";
        value = value;
    }

let oninput (value : string)  : html_attribute =
    {
        key = "oninput";
        value = value;
    }

let oninvalid (value : string)  : html_attribute =
    {
        key = "oninvalid";
        value = value;
    }

let onkeydown (value : string)  : html_attribute =
    {
        key = "onkeydown";
        value = value;
    }

let onkeypress (value : string)  : html_attribute =
    {
        key = "onkeypress";
        value = value;
    }

let onkeyup (value : string)  : html_attribute =
    {
        key = "onkeyup";
        value = value;
    }

let onload (value : string)  : html_attribute =
    {
        key = "onload";
        value = value;
    }

let onloadeddata (value : string)  : html_attribute =
    {
        key = "onloadeddata";
        value = value;
    }

let onloadedmetadata (value : string)  : html_attribute =
    {
        key = "onloadedmetadata";
        value = value;
    }

let onloadstart (value : string)  : html_attribute =
    {
        key = "onloadstart";
        value = value;
    }

let onmousedown (value : string)  : html_attribute =
    {
        key = "onmousedown";
        value = value;
    }

let onmousemove (value : string)  : html_attribute =
    {
        key = "onmousemove";
        value = value;
    }

let onmouseout (value : string)  : html_attribute =
    {
        key = "onmouseout";
        value = value;
    }

let onmouseover (value : string)  : html_attribute =
    {
        key = "onmouseover";
        value = value;
    }

let onmouseup (value : string)  : html_attribute =
    {
        key = "onmouseup";
        value = value;
    }

let onmousewheel (value : string)  : html_attribute =
    {
        key = "onmousewheel";
        value = value;
    }

let onoffline (value : string)  : html_attribute =
    {
        key = "onoffline";
        value = value;
    }

let ononline (value : string)  : html_attribute =
    {
        key = "ononline";
        value = value;
    }

let onpagehide (value : string)  : html_attribute =
    {
        key = "onpagehide";
        value = value;
    }

let onpageshow (value : string)  : html_attribute =
    {
        key = "onpageshow";
        value = value;
    }

let onpaste (value : string)  : html_attribute =
    {
        key = "onpaste";
        value = value;
    }

let onpause (value : string)  : html_attribute =
    {
        key = "onpause";
        value = value;
    }

let onplay (value : string)  : html_attribute =
    {
        key = "onplay";
        value = value;
    }

let onplaying (value : string)  : html_attribute =
    {
        key = "onplaying";
        value = value;
    }

let onpopstate (value : string)  : html_attribute =
    {
        key = "onpopstate";
        value = value;
    }

let onprogress (value : string)  : html_attribute =
    {
        key = "onprogress";
        value = value;
    }

let onratechange (value : string)  : html_attribute = 
    {
        key = "onratechange";
        value = value;
    }

let onreset (value : string)  : html_attribute =
    {
        key = "onreset";
        value = value;
    }

let onresize (value : string)  : html_attribute =
    {
        key = "onresize";
        value = value;
    }

let onscroll (value : string)  : html_attribute =
    {
        key = "onscroll";
        value = value;
    }

let onsearch (value : string)  : html_attribute =
    {
        key = "onsearch";
        value = value;
    }

let onseeked (value : string)  : html_attribute =
    {
        key = "onseeked";
        value = value;
    }

let onseeking (value : string)  : html_attribute =
    {
        key = "onseeking";
        value = value;
    }

let onselect (value : string)  : html_attribute =
    {
        key = "onselect";
        value = value;
    }

let onstalled (value : string)  : html_attribute =
    {
        key = "onstalled";
        value = value;
    }

let onstorage (value : string)  : html_attribute =
    {
        key = "onstorage";
        value = value;
    }

let onsubmit (value : string)  : html_attribute =
    {
        key = "onsubmit";
        value = value;
    }

let onsuspend (value : string)  : html_attribute =
    {
        key = "onsuspend";
        value = value;
    }

let ontimeupdate (value : string)  : html_attribute =
    {
        key = "ontimeupdate";
        value = value;
    }

let ontoggle (value : string)  : html_attribute =
    {
        key = "ontoggle";
        value = value;
    }

let onunload (value : string)  : html_attribute =
    {
        key = "onunload";
        value = value;
    }

let onvolumechange (value : string)  : html_attribute =
    {
        key = "onvolumechange";
        value = value;
    }

let onwaiting (value : string)  : html_attribute =
    {
        key = "onwaiting";
        value = value;
    }

let onwheel (value : string)  : html_attribute =
    {
        key = "onwheel";
        value = value;
    }

let open_ (value : string)  : html_attribute =
    {
        key = "open";
        value = value;
    }

let optimum (value : string)  : html_attribute =
    {
        key = "optimum";
        value = value;
    }

let pattern (value : string)  : html_attribute =
    {
        key = "pattern";
        value = value;
    }

let placeholder (value : string)  : html_attribute =
    {
        key = "placeholder";
        value = value;
    }

let poster (value : string)  : html_attribute =
    {
        key = "poster";
        value = value;
    }

let preload (value : string)  : html_attribute =
    {
        key = "preload";
        value = value;
    }

let readonly (value : string)  : html_attribute =
    {
        key = "readonly";
        value = value;
    }

let rel (value : string)  : html_attribute =
    {
        key = "rel";
        value = value;
    }

let required (value : string)  : html_attribute =
    {
        key = "required";
        value = value;
    }

let reversed (value : string)  : html_attribute =
    {
        key = "reversed";
        value = value;
    }

let rows (value : string)  : html_attribute =
    {
        key = "rows";
        value = value;
    }

let rowspan (value : string)  : html_attribute =
    {
        key = "rowspan";
        value = value;
    }

let sandbox (value : string)  : html_attribute =
    {
        key = "sandbox";
        value = value;
    }

let scope (value : string)  : html_attribute =
    {
        key = "scope";
        value = value;
    }

let selected (value : string)  : html_attribute =
    {
        key = "selected";
        value = value;
    }

let shape (value : string)  : html_attribute =
    {
        key = "shape";
        value = value;
    }

let size (value : string)  : html_attribute =
    {
        key = "size";
        value = value;
    }

let sizes (value : string)  : html_attribute =
    {
        key = "sizes";
        value = value;
    }

let span (value : string)  : html_attribute =
    {
        key = "span";
        value = value;
    }

let spellcheck (value : string)  : html_attribute =
    {
        key = "spellcheck";
        value = value;
    }

let src (value : string)  : html_attribute =
    {
        key = "src";
        value = value;
    }

let srcdoc (value : string)  : html_attribute =
    {
        key = "srcdoc";
        value = value;
    }

let srclang (value : string)  : html_attribute =
    {
        key = "srclang";
        value = value;
    }

let srcset (value : string)  : html_attribute =
    {
        key = "srcset";
        value = value;
    }

let start (value : string)  : html_attribute =
    {
        key = "start";
        value = value;
    }

let step (value : string)  : html_attribute =
    {
        key = "step";
        value = value;
    }

let style (value : string)  : html_attribute =
    {
        key = "style";
        value = value;
    }

let tabindex (value : string)  : html_attribute =
    {
        key = "tabindex";
        value = value;
    }

let target (value : string)  : html_attribute =
    {
        key = "target";
        value = value;
    }

let title (value : string)  : html_attribute =
    {
        key = "title";
        value = value;
    }

let translate (value : string)  : html_attribute =
    {
        key = "translate";
        value = value;
    }

let type_ (value : string)  : html_attribute =
    {
        key = "type";
        value = value;
    }

let usemap (value : string)  : html_attribute =
    {
        key = "usemap";
        value = value;
    }

let value (value : string)  : html_attribute =
    {
        key = "value";
        value = value;
    }

let width (value : string)  : html_attribute =
    {
        key = "width";
        value = value;
    }

let wrap (value : string)  : html_attribute =
    {
        key = "wrap";
        value = value;
    }
