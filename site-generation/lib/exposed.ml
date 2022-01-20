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


let id (x : 'a) = x

let ( >> ) f g x = g (f x)

let ( << ) g f x = g (f x)