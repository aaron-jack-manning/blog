open FromStdlib

let ( + ) a b = stdlib_plus_int a b

let ( - ) a b = stdlib_minus_int a b

let ( * ) a b = stdlib_multiply_int a b

let ( / ) a b = stdlib_divide_int a b

let ( mod ) a b = stdlib_mod_int a b

let of_char = stdlib_int_of_char

let of_string = stdlib_int_of_string_opt

