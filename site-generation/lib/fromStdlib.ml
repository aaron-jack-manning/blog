(* https://github.com/ocaml/ocaml/blob/cce52acc7c7903e92078e9fe40745e11a1b944f0/stdlib/pervasives.ml *)

(* For fatal.ml *)
let failwith = Stdlib.failwith


(* For terminal.ml *)
let printf = Printf.printf
type 'a printf_format = ('a, out_channel, unit) format


(* For int.ml *)
external int_of_char : char -> int = "%identity"
let int_of_string_opt = int_of_string_opt

external plus_int : int -> int -> int = "%addint"
external minus_int : int -> int -> int = "%subint"
external multiply_int : int -> int -> int = "%mulint"
external divide_int : int -> int -> int = "%divint"
external mod_int : int -> int -> int = "%modint"


(* For float.ml *)
let float_of_string_opt = float_of_string_opt

external plus_float : float -> float -> float = "%addfloat"
external minus_float : float -> float -> float = "%subfloat"
external multiply_float : float -> float -> float = "%mulfloat"
external divide_float : float -> float -> float = "%divfloat"


(* For char.ml *)
let char_of_int = char_of_int


(* For string.ml *)
let string_of_bool = string_of_bool
let string_of_int = string_of_int
let string_of_float = string_of_float

external string_length : string -> int = "%string_length"

    (* This block are not exposed *)
external bytes_create : int -> bytes = "caml_create_bytes"
external string_blit : string -> int -> bytes -> int -> int -> unit
                     = "caml_blit_string" [@@noalloc]
external bytes_blit : bytes -> int -> bytes -> int -> int -> unit
                        = "caml_blit_bytes" [@@noalloc]
external bytes_unsafe_to_string : bytes -> string = "%bytes_to_string"

let string_concat s1 s2 =
    let l1 = string_length s1 and l2 = string_length s2 in
    let s = bytes_create (l1 + l2) in
    string_blit s1 0 s 0 l1;
    string_blit s2 0 s l1 l2;
    bytes_unsafe_to_string s


(* For bool.ml *)
let bool_of_string_opt = bool_of_string_opt


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


