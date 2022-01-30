open General

let ( + ) a b = FromStdlib.plus_float a b

let ( - ) a b = FromStdlib.minus_float a b

let ( * ) a b = FromStdlib.multiply_float a b

let ( / ) a b = FromStdlib.divide_float a b

let of_string = FromStdlib.float_of_string_opt
