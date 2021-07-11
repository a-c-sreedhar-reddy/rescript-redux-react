type _type = Increment | Decrement | Update(int)
type action = {"type": _type}
let reducer = (~state=1, ~action: action) =>
  switch action["type"] {
  | Increment => state + 1
  | Decrement => state - 1
  | Update(int) => int
  }
