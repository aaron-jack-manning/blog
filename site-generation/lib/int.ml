open General

let ( + ) a b = FromStdlib.plus_int a b

let ( - ) a b = FromStdlib.minus_int a b

let ( * ) a b = FromStdlib.multiply_int a b

let ( / ) a b = FromStdlib.divide_int a b

let ( mod ) a b = FromStdlib.mod_int a b

let of_char = FromStdlib.int_of_char

let of_string = FromStdlib.int_of_string_opt

