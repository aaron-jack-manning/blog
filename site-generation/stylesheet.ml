open General
open Css open CssConversions


let css = [
        (* Computer Modern Font *)
        create_style_group ["@font-face"] [
            font_family "\"Computer Modern\"";
            custom_tag "src" "url(computer-modern-sans/cmunss.ttf)";
            font_style "normal";
            font_weight "100";
        ];
        create_style_group ["h1,"; "h2,"; "h3,"; "h4,"; "h5,"; "h6,"; "body,"; "a"] [
            font_family "\"Computer Modern\", sans-serif";
        ];
        (* Blog Header *)
        create_style_group ["nav"] [
            border_bottom "1px solid #e5e5e5";
        ];
        create_style_group ["header"] [
            line_height "1";
            border_bottom "1px solid #e5e5e5";
        ];
        create_style_group ["header"; "a"] [
            font_size "2.25rem";
        ];
        create_style_group ["header"; "a:hover"] [
            text_decoration "none";
        ];
        (* Blog Post Styling *)
        create_style_group ["article"] [
            margin_bottom "4rem";
            margin_top "3rem";
        ];
        create_style_group ["article"; "h2"] [
            margin_bottom ".25rem";
            font_size "2.5rem";
        ];
        create_style_group ["article"; "h2"; "a:hover"] [
            text_decoration "none";
            color "black";
            color "grey";
        ];
        create_style_group ["article"; "h2"; "a"] [
            text_decoration "none";
            color "black";
        ];
        create_style_group ["article"; "time"] [
            display "inline-block";
            margin_bottom "1.25rem";
            color "#727272";
        ];
        create_style_group ["article"; "blockquote"] [
            text_align "center";
            font_style "italic";
        ];
        create_style_group ["article"; "pre"; "code"] [
            background_color "#eee";
            border_radius "0.5em";
            display "block";
            padding "2em";
        ];
        create_style_group ["article"; "iframe"] [
            height "30vh";
        ];
        create_style_group ["article"; "img"] [
            width "100%";
        ];
        create_style_group ["article"; "p"] [
            font_size "14pt";
        ];
        (* Footer *)
        create_style_group ["footer"] [
            padding "2.5rem 0";
            color "#727272";
            text_align "center";
            background_color "#f9f9f9";
            border_top ".05rem solid #e5e5e5";
        ];
    ]
    |> List.map (fun x -> String.(css_class_text x + "\n"))
    |> String.concat