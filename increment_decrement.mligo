
type storage = int
type parameter =
  Increment of int
| Decrement of int
| Reset
type return = operation list * storage
 
let add (n, s : int * storage) : storage = n + s
let sub (n, s : int * storage) : storage = s - n 
 
let main (p, s : parameter * storage) : return =
 ([] : operation list), 
 (match p with
   Increment n -> add (n, s)
 | Decrement n -> sub (n, s)
 | Reset         -> 0)