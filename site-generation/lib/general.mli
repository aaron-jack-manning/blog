(** Purely functional queue, implemented as a pair of lists. *)
type 'a queue = { front : 'a list; back : 'a list }

type 'a result =
    | Error of string
    | Success of 'a

(** Purely functional stack. *)
type 'a stack =
    | Empty
    | Stacked of 'a * 'a stack

(* A purely functional tree with arbitrarily many branches at each node. *)
type 'a tree =
    | Leaf
    | Branch of 'a * 'a tree list

(** Identity function. *)
val id : 'a -> 'a

(** Suppresses compiler warnings for unassigned return value from function. *)
val ignore : 'a -> unit

(** Function composition. (f >> g) x represents g (f x). *)
val ( >> ) : ('a -> 'b) -> ('b -> 'c) -> 'a -> 'c

(** Function composition. (f << g) x represents f (g x). *)
val ( << ) : ('a -> 'b) -> ('c -> 'a) -> 'c -> 'b

(** Pipeline operator, to reverse function application order. *)
val ( |> ) : 'a -> ('a -> 'b) -> 'b

(** Checks for structural equality. *)
val ( = ) : 'a -> 'a -> bool

(** Checks for structural inequality. *)
val ( <> ) : 'a -> 'a -> bool

(** Polymorphic less than. *)
val ( < ) : 'a -> 'a -> bool

(** Polymorphic greater than. *)
val ( > ) : 'a -> 'a -> bool

(** Polymorphic less than or equal to. *)
val ( <= ) : 'a -> 'a -> bool

(** Polymorphic greater than or equal to. *)
val ( >= ) : 'a -> 'a -> bool

(** Logical negation. *)
val not : bool -> bool

(** Logical or (infix). *)
val ( or ) : bool -> bool -> bool

(** Logical and. *)
val ( & ) : bool -> bool -> bool