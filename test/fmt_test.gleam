import fmt
import gleam/should

pub fn int_to_string_test() {
  fmt.to_string(42)
  |> should.equal("42")
}

pub fn float_to_string_test() {
  fmt.to_string(3.5)
  |> should.equal("3.5")
}

pub fn string_to_string_test() {
  fmt.to_string("Hello")
  |> should.equal("Hello")
}

pub fn append_int_test() {
  fmt.append("The number is ", 1)
  |> should.equal("The number is 1")
}
