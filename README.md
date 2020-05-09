# fmt

Utilities for formatting Strings.


## Example

```rust
import fmt

fn test_to_string(val) {
  fmt.to_string(val)  // Converts any value to String
}

fn test_append(a_list) {
  case a_list {
    [] -> "list is empty"
    [x] -> "list has one element: " |> fmt.append(x)  // Appends any value as a String
    [x, y] -> "list has two elements: "
      |> fmt.append(x)
      |> fmt.append(" and ")
      |> fmt.append(y)
    _ -> "list has more than two elements"
  }
}
```


## Quick start

```sh
# Build the project
rebar3 compile

# Run the eunit tests
rebar3 eunit

# Run the Erlang REPL
rebar3 shell
```


## Installation

If [available in Hex](https://www.rebar3.org/docs/dependencies#section-declaring-dependencies)
this package can be installed by adding `fmt` to your `rebar.config` dependencies:

```erlang
{deps, [
    fmt
]}.
```
