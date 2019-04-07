open Mirage

let main = foreign ~packages:[package "mirage-zmq"] "Unikernel.Main" (stackv4 @-> job)

let stack = generic_stackv4 default_network

let () =
  register "pair_unikernel"  [
    main $ stack
  ]
