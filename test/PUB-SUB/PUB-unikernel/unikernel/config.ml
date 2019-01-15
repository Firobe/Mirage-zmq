open Mirage

let main = foreign ~packages:[package "zmq-mirage"] "Unikernel.Main" (stackv4 @-> job)

let stack = generic_stackv4 default_network

let () =
  register "pub_unikernel"  [
    main $ stack
  ]
