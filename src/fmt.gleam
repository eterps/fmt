import gleam/dynamic
import gleam/float
import gleam/int
import gleam/string

fn convert(alt_val, dyn_val, detect_type, convert_type) {
  case detect_type(dyn_val) {
    Ok(val) -> convert_type(val)
    Error(_) -> alt_val
  }
}

pub fn to_string(val) {
  let dyn_val = dynamic.from(val)
  "<?>"
  |> convert(dyn_val, dynamic.string, fn(x) { x })
  |> convert(dyn_val, dynamic.float, float.to_string)
  |> convert(dyn_val, dynamic.int, int.to_string)
}

pub fn append(str, val) {
  string.append(str, to_string(val))
}
