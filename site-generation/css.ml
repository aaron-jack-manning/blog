open FromStdlib open Exposed

open Attributes



type css_style =
    {
        property : string;
        value : string;
    }

type css_class =
    {
        name : string;
        styles : css_style list;
    }

let create_css_class (name : string) (styles : css_style list) : css_class =
    {
        name = name;
        styles = styles;
    }


(* Property constructors. *)
let align_content (value : string) =
    {
        property = "align-content";
         value = value;
    }

let align_items (value : string) =
    {
        property = "align-items";
         value = value;
    }

let align_self (value : string) =
    {
        property = "align-self";
         value = value;
    }

let all (value : string) =
    {
        property = "all";
         value = value;
    }

let animation (value : string) =
    {
        property = "animation";
         value = value;
    }

let animation_delay (value : string) =
    {
        property = "animation-delay";
         value = value;
    }

let animation_direction (value : string) =
    {
        property = "animation-direction";
         value = value;
    }

let animation_duration (value : string) =
    {
        property = "animation-duration";
         value = value;
    }

let animation_fill_mode (value : string) =
    {
        property = "animation-fill-mode";
         value = value;
    }

let animation_iteration_count (value : string) =
    {
        property = "animation-iteration-count";
         value = value;
    }

let animation_name (value : string) =
    {
        property = "animation-name";
         value = value;
    }

let animation_play_state (value : string) =
    {
        property = "animation-play-state";
         value = value;
    }

let animation_timing_function (value : string) =
    {
        property = "animation-timing-function";
         value = value;
    }

let backface_visibility (value : string) =
    {
        property = "backface-visibility";
         value = value;
    }

let background (value : string) =
    {
        property = "background";
         value = value;
    }

let background_attachment (value : string) =
    {
        property = "background-attachment";
         value = value;
    }

let background_blend_mode (value : string) =
    {
        property = "background-blend-mode";
         value = value;
    }

let background_clip (value : string) =
    {
        property = "background-clip";
         value = value;
    }

let background_color (value : string) =
    {
        property = "background-color";
         value = value;
    }

let background_image (value : string) =
    {
        property = "background-image";
         value = value;
    }

let background_origin (value : string) =
    {
        property = "background-origin";
         value = value;
    }

let background_position (value : string) =
    {
        property = "background-position";
         value = value;
    }

let background_repeat (value : string) =
    {
        property = "background-repeat";
         value = value;
    }

let background_size (value : string) =
    {
        property = "background-size";
         value = value;
    }

let border (value : string) =
    {
        property = "border";
         value = value;
    }

let border_bottom (value : string) =
    {
        property = "border-bottom";
         value = value;
    }

let border_bottom_color (value : string) =
    {
        property = "border-bottom-color";
         value = value;
    }

let border_bottom_left_radius (value : string) =
    {
        property = "border-bottom-left-radius";
         value = value;
    }

let border_bottom_right_radius (value : string) =
    {
        property = "border-bottom-right-radius";
         value = value;
    }

let border_bottom_style (value : string) =
    {
        property = "border-bottom-style";
         value = value;
    }

let border_bottom_width (value : string) =
    {
        property = "border-bottom-width";
         value = value;
    }

let border_collapse (value : string) =
    {
        property = "border-collapse";
         value = value;
    }

let border_color (value : string) =
    {
        property = "border-color";
         value = value;
    }

let border_image (value : string) =
    {
        property = "border-image";
         value = value;
    }

let border_image_outset (value : string) =
    {
        property = "border-image-outset";
         value = value;
    }

let border_image_repeat (value : string) =
    {
        property = "border-image-repeat";
         value = value;
    }

let border_image_slice (value : string) =
    {
        property = "border-image-slice";
         value = value;
    }

let border_image_source (value : string) =
    {
        property = "border-image-source";
         value = value;
    }

let border_image_width (value : string) =
    {
        property = "border-image-width";
         value = value;
    }

let border_left (value : string) =
    {
        property = "border-left";
         value = value;
    }

let border_left_color (value : string) =
    {
        property = "border-left-color";
         value = value;
    }

let border_left_style (value : string) =
    {
        property = "border-left-style";
         value = value;
    }

let border_left_width (value : string) =
    {
        property = "border-left-width";
         value = value;
    }

let border_radius (value : string) =
    {
        property = "border-radius";
         value = value;
    }

let border_right (value : string) =
    {
        property = "border-right";
         value = value;
    }

let border_right_color (value : string) =
    {
        property = "border-right-color";
         value = value;
    }

let border_right_style (value : string) =
    {
        property = "border-right-style";
         value = value;
    }

let border_right_width (value : string) =
    {
        property = "border-right-width";
         value = value;
    }

let border_spacing (value : string) =
    {
        property = "border-spacing";
         value = value;
    }

let border_style (value : string) =
    {
        property = "border-style";
         value = value;
    }

let border_top (value : string) =
    {
        property = "border-top";
         value = value;
    }

let border_top_color (value : string) =
    {
        property = "border-top-color";
         value = value;
    }

let border_top_left_radius (value : string) =
    {
        property = "border-top-left-radius";
         value = value;
    }

let border_top_right_radius (value : string) =
    {
        property = "border-top-right-radius";
         value = value;
    }

let border_top_style (value : string) =
    {
        property = "border-top-style";
         value = value;
    }

let border_top_width (value : string) =
    {
        property = "border-top-width";
         value = value;
    }

let border_width (value : string) =
    {
        property = "border-width";
         value = value;
    }

let bottom (value : string) =
    {
        property = "bottom";
         value = value;
    }

let box_decoration_break (value : string) =
    {
        property = "box-decoration-break";
         value = value;
    }

let box_shadow (value : string) =
    {
        property = "box-shadow";
         value = value;
    }

let box_sizing (value : string) =
    {
        property = "box-sizing";
         value = value;
    }

let break_after (value : string) =
    {
        property = "break-after";
         value = value;
    }

let break_before (value : string) =
    {
        property = "break-before";
         value = value;
    }

let break_inside (value : string) =
    {
        property = "break-inside";
         value = value;
    }

let caption_side (value : string) =
    {
        property = "caption-side";
         value = value;
    }

let caret_color (value : string) =
    {
        property = "caret-color";
         value = value;
    }

let charset (value : string) =
    {
        property = "@charset";
         value = value;
    }

let clear (value : string) =
    {
        property = "clear";
         value = value;
    }

let clip (value : string) =
    {
        property = "clip";
         value = value;
    }

let color (value : string) =
    {
        property = "color";
         value = value;
    }

let column_count (value : string) =
    {
        property = "column-count";
         value = value;
    }

let column_fill (value : string) =
    {
        property = "column-fill";
         value = value;
    }

let column_gap (value : string) =
    {
        property = "column-gap";
         value = value;
    }

let column_rule (value : string) =
    {
        property = "column-rule";
         value = value;
    }

let column_rule_color (value : string) =
    {
        property = "column-rule-color";
         value = value;
    }

let column_rule_style (value : string) =
    {
        property = "column-rule-style";
         value = value;
    }

let column_rule_width (value : string) =
    {
        property = "column-rule-width";
         value = value;
    }

let column_span (value : string) =
    {
        property = "column-span";
         value = value;
    }

let column_width (value : string) =
    {
        property = "column-width";
         value = value;
    }

let columns (value : string) =
    {
        property = "columns";
         value = value;
    }

let content (value : string) =
    {
        property = "content";
         value = value;
    }

let counter_increment (value : string) =
    {
        property = "counter-increment";
         value = value;
    }

let counter_reset (value : string) =
    {
        property = "counter-reset";
         value = value;
    }

let cursor (value : string) =
    {
        property = "cursor";
         value = value;
    }

let direction (value : string) =
    {
        property = "direction";
         value = value;
    }

let display (value : string) =
    {
        property = "display";
         value = value;
    }

let empty_cells (value : string) =
    {
        property = "empty-cells";
         value = value;
    }

let filter (value : string) =
    {
        property = "filter";
         value = value;
    }

let flex (value : string) =
    {
        property = "flex";
         value = value;
    }

let flex_basis (value : string) =
    {
        property = "flex-basis";
         value = value;
    }

let flex_direction (value : string) =
    {
        property = "flex-direction";
         value = value;
    }

let flex_flow (value : string) =
    {
        property = "flex-flow";
         value = value;
    }

let flex_grow (value : string) =
    {
        property = "flex-grow";
         value = value;
    }

let flex_shrink (value : string) =
    {
        property = "flex-shrink";
         value = value;
    }

let flex_wrap (value : string) =
    {
        property = "flex-wrap";
         value = value;
    }

let float (value : string) =
    {
        property = "float";
         value = value;
    }

let font (value : string) =
    {
        property = "font";
         value = value;
    }

let font_face (value : string) =
    {
        property = "@font-face";
         value = value;
    }

let font_family (value : string) =
    {
        property = "font-family";
         value = value;
    }

let font_feature_settings (value : string) =
    {
        property = "font-feature-settings";
         value = value;
    }

let font_feature_values (value : string) =
    {
        property = "@font-feature-values";
         value = value;
    }

let font_kerning (value : string) =
    {
        property = "font-kerning";
         value = value;
    }

let font_language_override (value : string) =
    {
        property = "font-language-override";
         value = value;
    }

let font_size (value : string) =
    {
        property = "font-size";
         value = value;
    }

let font_size_adjust (value : string) =
    {
        property = "font-size-adjust";
         value = value;
    }

let font_stretch (value : string) =
    {
        property = "font-stretch";
         value = value;
    }

let font_style (value : string) =
    {
        property = "font-style";
         value = value;
    }

let font_synthesis (value : string) =
    {
        property = "font-synthesis";
         value = value;
    }

let font_variant (value : string) =
    {
        property = "font-variant";
         value = value;
    }

let font_variant_alternates (value : string) =
    {
        property = "font-variant-alternates";
         value = value;
    }

let font_variant_caps (value : string) =
    {
        property = "font-variant-caps";
         value = value;
    }

let font_variant_east_asian (value : string) =
    {
        property = "font-variant-east-asian";
         value = value;
    }

let font_variant_ligatures (value : string) =
    {
        property = "font-variant-ligatures";
         value = value;
    }

let font_variant_numeric (value : string) =
    {
        property = "font-variant-numeric";
         value = value;
    }

let font_variant_position (value : string) =
    {
        property = "font-variant-position";
         value = value;
    }

let font_weight (value : string) =
    {
        property = "font-weight";
         value = value;
    }

let gap (value : string) =
    {
        property = "gap";
         value = value;
    }

let grid (value : string) =
    {
        property = "grid";
         value = value;
    }

let grid_area (value : string) =
    {
        property = "grid-area";
         value = value;
    }

let grid_auto_columns (value : string) =
    {
        property = "grid-auto-columns";
         value = value;
    }

let grid_auto_flow (value : string) =
    {
        property = "grid-auto-flow";
         value = value;
    }

let grid_auto_rows (value : string) =
    {
        property = "grid-auto-rows";
         value = value;
    }

let grid_column (value : string) =
    {
        property = "grid-column";
         value = value;
    }

let grid_column_end (value : string) =
    {
        property = "grid-column-end";
         value = value;
    }

let grid_column_gap (value : string) =
    {
        property = "grid-column-gap";
         value = value;
    }

let grid_column_start (value : string) =
    {
        property = "grid-column-start";
         value = value;
    }

let grid_gap (value : string) =
    {
        property = "grid-gap";
         value = value;
    }

let grid_row (value : string) =
    {
        property = "grid-row";
         value = value;
    }

let grid_row_end (value : string) =
    {
        property = "grid-row-end";
         value = value;
    }

let grid_row_gap (value : string) =
    {
        property = "grid-row-gap";
         value = value;
    }

let grid_row_start (value : string) =
    {
        property = "grid-row-start";
         value = value;
    }

let grid_template (value : string) =
    {
        property = "grid-template";
         value = value;
    }

let grid_template_areas (value : string) =
    {
        property = "grid-template-areas";
         value = value;
    }

let grid_template_columns (value : string) =
    {
        property = "grid-template-columns";
         value = value;
    }

let grid_template_rows (value : string) =
    {
        property = "grid-template-rows";
         value = value;
    }

let hanging_punctuation (value : string) =
    {
        property = "hanging-punctuation";
         value = value;
    }

let height (value : string) =
    {
        property = "height";
         value = value;
    }

let hyphens (value : string) =
    {
        property = "hyphens";
         value = value;
    }

let image_rendering (value : string) =
    {
        property = "image-rendering";
         value = value;
    }

let import (value : string) =
    {
        property = "@import";
         value = value;
    }

let isolation (value : string) =
    {
        property = "isolation";
         value = value;
    }

let justify_content (value : string) =
    {
        property = "justify-content";
         value = value;
    }

let keyframes (value : string) =
    {
        property = "@keyframes";
         value = value;
    }

let left (value : string) =
    {
        property = "left";
         value = value;
    }

let letter_spacing (value : string) =
    {
        property = "letter-spacing";
         value = value;
    }

let line_break (value : string) =
    {
        property = "line-break";
         value = value;
    }

let line_height (value : string) =
    {
        property = "line-height";
         value = value;
    }

let list_style (value : string) =
    {
        property = "list-style";
         value = value;
    }

let list_style_image (value : string) =
    {
        property = "list-style-image";
         value = value;
    }

let list_style_position (value : string) =
    {
        property = "list-style-position";
         value = value;
    }

let list_style_type (value : string) =
    {
        property = "list-style-type";
         value = value;
    }

let margin (value : string) =
    {
        property = "margin";
         value = value;
    }

let margin_bottom (value : string) =
    {
        property = "margin-bottom";
         value = value;
    }

let margin_left (value : string) =
    {
        property = "margin-left";
         value = value;
    }

let margin_right (value : string) =
    {
        property = "margin-right";
         value = value;
    }

let margin_top (value : string) =
    {
        property = "margin-top";
         value = value;
    }

let mask (value : string) =
    {
        property = "mask";
         value = value;
    }

let mask_clip (value : string) =
    {
        property = "mask-clip";
         value = value;
    }

let mask_composite (value : string) =
    {
        property = "mask-composite";
         value = value;
    }

let mask_image (value : string) =
    {
        property = "mask-image";
         value = value;
    }

let mask_mode (value : string) =
    {
        property = "mask-mode";
         value = value;
    }

let mask_origin (value : string) =
    {
        property = "mask-origin";
         value = value;
    }

let mask_position (value : string) =
    {
        property = "mask-position";
         value = value;
    }

let mask_repeat (value : string) =
    {
        property = "mask-repeat";
         value = value;
    }

let mask_size (value : string) =
    {
        property = "mask-size";
         value = value;
    }

let mask_type (value : string) =
    {
        property = "mask-type";
         value = value;
    }

let max_height (value : string) =
    {
        property = "max-height";
         value = value;
    }

let max_width (value : string) =
    {
        property = "max-width";
         value = value;
    }

let media (value : string) =
    {
        property = "@media";
         value = value;
    }

let min_height (value : string) =
    {
        property = "min-height";
         value = value;
    }

let min_width (value : string) =
    {
        property = "min-width";
         value = value;
    }

let mix_blend_mode (value : string) =
    {
        property = "mix-blend-mode";
         value = value;
    }

let object_fit (value : string) =
    {
        property = "object-fit";
         value = value;
    }

let object_position (value : string) =
    {
        property = "object-position";
         value = value;
    }

let opacity (value : string) =
    {
        property = "opacity";
         value = value;
    }

let order (value : string) =
    {
        property = "order";
         value = value;
    }

let orphans (value : string) =
    {
        property = "orphans";
         value = value;
    }

let outline (value : string) =
    {
        property = "outline";
         value = value;
    }

let outline_color (value : string) =
    {
        property = "outline-color";
         value = value;
    }

let outline_offset (value : string) =
    {
        property = "outline-offset";
         value = value;
    }

let outline_style (value : string) =
    {
        property = "outline-style";
         value = value;
    }

let outline_width (value : string) =
    {
        property = "outline-width";
         value = value;
    }

let overflow (value : string) =
    {
        property = "overflow";
         value = value;
    }

let overflow_wrap (value : string) =
    {
        property = "overflow-wrap";
         value = value;
    }

let overflow_x (value : string) =
    {
        property = "overflow-x";
         value = value;
    }

let overflow_y (value : string) =
    {
        property = "overflow-y";
         value = value;
    }

let padding (value : string) =
    {
        property = "padding";
         value = value;
    }

let padding_bottom (value : string) =
    {
        property = "padding-bottom";
         value = value;
    }

let padding_left (value : string) =
    {
        property = "padding-left";
         value = value;
    }

let padding_right (value : string) =
    {
        property = "padding-right";
         value = value;
    }

let padding_top (value : string) =
    {
        property = "padding-top";
         value = value;
    }

let page_break_after (value : string) =
    {
        property = "page-break-after";
         value = value;
    }

let page_break_before (value : string) =
    {
        property = "page-break-before";
         value = value;
    }

let page_break_inside (value : string) =
    {
        property = "page-break-inside";
         value = value;
    }

let perspective (value : string) =
    {
        property = "perspective";
         value = value;
    }

let perspective_origin (value : string) =
    {
        property = "perspective-origin";
         value = value;
    }

let pointer_events (value : string) =
    {
        property = "pointer-events";
         value = value;
    }

let position (value : string) =
    {
        property = "position";
         value = value;
    }

let quotes (value : string) =
    {
        property = "quotes";
         value = value;
    }

let resize (value : string) =
    {
        property = "resize";
         value = value;
    }

let right (value : string) =
    {
        property = "right";
         value = value;
    }

let row_gap (value : string) =
    {
        property = "row-gap";
         value = value;
    }

let scroll_behavior (value : string) =
    {
        property = "scroll-behavior";
         value = value;
    }

let tab_size (value : string) =
    {
        property = "tab-size";
         value = value;
    }

let table_layout (value : string) =
    {
        property = "table-layout";
         value = value;
    }

let text_align (value : string) =
    {
        property = "text-align";
         value = value;
    }

let text_align_last (value : string) =
    {
        property = "text-align-last";
         value = value;
    }

let text_combine_upright (value : string) =
    {
        property = "text-combine-upright";
         value = value;
    }

let text_decoration (value : string) =
    {
        property = "text-decoration";
         value = value;
    }

let text_decoration_color (value : string) =
    {
        property = "text-decoration-color";
         value = value;
    }

let text_decoration_line (value : string) =
    {
        property = "text-decoration-line";
         value = value;
    }

let text_decoration_style (value : string) =
    {
        property = "text-decoration-style";
         value = value;
    }

let text_indent (value : string) =
    {
        property = "text-indent";
         value = value;
    }

let text_justify (value : string) =
    {
        property = "text-justify";
         value = value;
    }

let text_orientation (value : string) =
    {
        property = "text-orientation";
         value = value;
    }

let text_overflow (value : string) =
    {
        property = "text-overflow";
         value = value;
    }

let text_shadow (value : string) =
    {
        property = "text-shadow";
         value = value;
    }

let text_transform (value : string) =
    {
        property = "text-transform";
         value = value;
    }

let text_underline_position (value : string) =
    {
        property = "text-underline-position";
         value = value;
    }

let top (value : string) =
    {
        property = "top";
         value = value;
    }

let transform (value : string) =
    {
        property = "transform";
         value = value;
    }

let transform_origin (value : string) =
    {
        property = "transform-origin";
         value = value;
    }

let transform_style (value : string) =
    {
        property = "transform-style";
         value = value;
    }

let transition (value : string) =
    {
        property = "transition";
         value = value;
    }

let transition_delay (value : string) =
    {
        property = "transition-delay";
         value = value;
    }

let transition_duration (value : string) =
    {
        property = "transition-duration";
         value = value;
    }

let transition_property (value : string) =
    {
        property = "transition-property";
         value = value;
    }

let transition_timing_function (value : string) =
    {
        property = "transition-timing-function";
         value = value;
    }

let unicode_bidi (value : string) =
    {
        property = "unicode-bidi";
         value = value;
    }

let user_select (value : string) =
    {
        property = "user-select";
         value = value;
    }

let vertical_align (value : string) =
    {
        property = "vertical-align";
         value = value;
    }

let visibility (value : string) =
    {
        property = "visibility";
         value = value;
    }

let white_space (value : string) =
    {
        property = "white-space";
         value = value;
    }

let widows (value : string) =
    {
        property = "widows";
         value = value;
    }

let width (value : string) =
    {
        property = "width";
         value = value;
    }

let word_break (value : string) =
    {
        property = "word-break";
         value = value;
    }

let word_spacing (value : string) =
    {
        property = "word-spacing";
         value = value;
    }

let word_wrap (value : string) =
    {
        property = "word-wrap";
         value = value;
    }

let writing_mode (value : string) =
    {
        property = "writing-mode";
         value = value;
    }

let z_index (value : string) =
    {
        property = "z-index";
         value = value;
    }