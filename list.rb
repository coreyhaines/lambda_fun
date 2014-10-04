EmptyList = Cons[Cons[True][Noop]][Cons[Cons[True][Noop]][Noop]]
IsEmpty =
-> list {
  Car[Car[list]]
}
Unshift =
-> element { -> list {
  Cons[Cons[False][element]][list]
}}
Head =
-> list {
  Cdr[Car[list]]
}
Tail =
-> list {
  Cdr[list]
}
