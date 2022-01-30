type 'a queue = { front : 'a list; back : 'a list }

type 'a result =
    | Error of string
    | Success of 'a

type 'a stack =
    | Empty
    | Stacked of 'a * 'a stack

type 'a tree =
    | Leaf
    | Branch of 'a * 'a tree list

let ignore = FromStdlib.ignore

let id (x : 'a) = x

let ( >> ) f g x = g (f x)

let ( << ) g f x = g (f x)

let ( |> ) = FromStdlib.pipeline

let ( = ) = FromStdlib.equal

let ( <> ) = FromStdlib.not_equal

let ( < ) = FromStdlib.less_than

let ( > ) = FromStdlib.greater_than

let ( <= ) = FromStdlib.less_than_or_equal

let ( >= ) = FromStdlib.greater_than_or_equal

let not = FromStdlib.not

let ( or ) = FromStdlib.or_

let ( & ) = FromStdlib.and_

