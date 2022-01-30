(* For fatal.ml *)
val failwith : string -> 'a


(* For terminal.ml *)
val printf : ('a, out_channel, unit) format -> 'a
type 'a printf_format = ('a, out_channel, unit) format


(* For int.ml *)
external int_of_char : char -> int = "%identity"
val int_of_string_opt : string -> int option

external plus_int : int -> int -> int = "%addint"
external minus_int : int -> int -> int = "%subint"
external multiply_int : int -> int -> int = "%mulint"
external divide_int : int -> int -> int = "%divint"
external mod_int : int -> int -> int = "%modint"


(* For float.ml *)
val float_of_string_opt : string -> float option

external plus_float : float -> float -> float = "%addfloat"
external minus_float : float -> float -> float = "%subfloat"
external multiply_float : float -> float -> float = "%mulfloat"
external divide_float : float -> float -> float = "%divfloat"


(* For char.ml *)
val char_of_int : int -> char


(* For string.ml *)
val string_of_bool : bool -> string
val string_of_int : int -> string
val string_of_float : float -> string

external string_length : string -> int = "%string_length"
val string_concat : string -> string -> string


(* For bool.ml *)
val bool_of_string_opt : string -> bool option


(* For general.ml *)
external equal : 'a -> 'a -> bool = "%equal"
external not_equal : 'a -> 'a -> bool = "%notequal"

external less_than : 'a -> 'a -> bool = "%lessthan"
external greater_than : 'a -> 'a -> bool = "%greaterthan"
external less_than_or_equal : 'a -> 'a -> bool = "%lessequal"
external greater_than_or_equal : 'a -> 'a -> bool = "%greaterequal"

external not : bool -> bool = "%boolnot"
external or_ : bool -> bool -> bool = "%sequor"
external and_ : bool -> bool -> bool = "%sequand"

external pipeline : 'a -> ('a -> 'b) -> 'b = "%revapply"
external ignore : 'a -> unit = "%ignore"