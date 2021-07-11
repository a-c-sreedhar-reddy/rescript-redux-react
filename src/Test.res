@module("react-redux")
external useSelector: (int => 'a) => 'a = "useSelector"
type dispatch = Reducer.action => unit
@module("react-redux")
external useDispatch: unit => dispatch = "useDispatch"
@react.component
let make = () => {
  let state = useSelector(store => store)
  let dispatch = useDispatch()
  <>
    <div> {React.string("Hello World")} </div>
    <div> {React.int(state)} </div>
    <button
      title="increment"
      onClick={_ => {
        dispatch({"type": Reducer.Decrement})
      }}>
      {React.string("Decrement")}
    </button>
    <button
      title="increment"
      onClick={_ => {
        dispatch({"type": Reducer.Increment})
      }}>
      {React.string("increment")}
    </button>
  </>
}
