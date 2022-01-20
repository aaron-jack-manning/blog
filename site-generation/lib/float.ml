open FromStdlib open Exposed

let ( + ) a b = stdlib_plus_float a b

let ( - ) a b = stdlib_minus_float a b

let ( * ) a b = stdlib_multiply_float a b

let ( / ) a b = stdlib_divide_float a b

let of_string = stdlib_float_of_string_opt
