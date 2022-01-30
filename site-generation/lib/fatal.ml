open General

let failwith = FromStdlib.failwith

let guarantee b =
    if not b then
        failwith "guarantee failed.\n"

let guarantee_equal a b =
    if a <> b then
        failwith "guarantee_equal failed."