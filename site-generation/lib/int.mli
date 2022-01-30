open General

val ( + ) : int -> int -> int

val ( - ) : int -> int -> int

val ( * ) : int -> int -> int

val ( / ) : int -> int -> int

val ( mod ) : int -> int -> int

(** Converts the char to an int. *)
val of_char : char -> int

(** Converts the string to an int, returning option type to account for invalid strings. *)
val of_string : string -> int option