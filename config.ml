open Mirage

let main = main ~packages:[ package "ocaml" ~max:"5.0.0"; package "duration" ] "Unikernel.Hello" (time @-> job)
let () = register "hello" [ main $ default_time ]
