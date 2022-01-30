open General

val ( + ) : float -> float -> float

val ( - ) : float -> float -> float

val ( * ) : float -> float -> float

val ( / ) : float -> float -> float

(** Converts the string to a float, returning option type to account for invalid strings. *)
val of_string : string -> float option