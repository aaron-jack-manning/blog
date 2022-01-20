val failwith : string -> 'a
val printf : ('a, out_channel, unit) format -> 'a

external ( |> ) : 'a -> ('a -> 'b) -> 'b = "%revapply"
external ignore : 'a -> unit = "%ignore"

external stdlib_int_of_char : char -> int = "%identity"
val stdlib_char_of_int : int -> char
val stdlib_string_of_bool : bool -> string
val stdlib_bool_of_string : string -> bool
val stdlib_bool_of_string_opt : string -> bool option
val stdlib_string_of_int : int -> string
external stdlib_int_of_string : string -> int = "caml_int_of_string"
val stdlib_int_of_string_opt : string -> int option
val stdlib_string_of_float : float -> string
external stdlib_float_of_string : string -> float = "caml_float_of_string"
val stdlib_float_of_string_opt : string -> float option

external stdlib_plus_int : int -> int -> int = "%addint"
external stdlib_minus_int : int -> int -> int = "%subint"
external stdlib_multiply_int : int -> int -> int = "%mulint"
external stdlib_divide_int : int -> int -> int = "%divint"
external stdlib_mod_int : int -> int -> int = "%modint"

external stdlib_plus_float : float -> float -> float = "%addfloat"
external stdlib_minus_float : float -> float -> float = "%subfloat"
external stdlib_multiply_float : float -> float -> float = "%mulfloat"
external stdlib_divide_float : float -> float -> float = "%divfloat"

external stdlib_string_length : string -> int = "%string_length"
val stdlib_string_concat : string -> string -> string

external ( = ) : 'a -> 'a -> bool = "%equal"
external ( <> ) : 'a -> 'a -> bool = "%notequal"

external ( < ) : 'a -> 'a -> bool = "%lessthan"
external ( > ) : 'a -> 'a -> bool = "%greaterthan"
external ( <= ) : 'a -> 'a -> bool = "%lessequal"
external ( >= ) : 'a -> 'a -> bool = "%greaterequal"

external not : bool -> bool = "%boolnot"
external ( or ) : bool -> bool -> bool = "%sequor"
external ( & ) : bool -> bool -> bool = "%sequand"
