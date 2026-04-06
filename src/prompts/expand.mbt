///|
pub struct ExpandOption {
  name : String
  value : String
  key : String
}

///|
pub struct ExpandConfig {
  message : String
  options : Array[ExpandOption]
  default : Int
}

///|
pub fn expand(config : ExpandConfig) -> String {
  println(config.message)
  println("(Use arrow keys to expand)")
  for i = 0; i < config.options.length(); i = i + 1 {
    let option = config.options[i]
    let key = if option.key.length() > 0 {
      option.key + ")"
    } else {
      "\{i + 1})"
    }
    println("\{key} \{option.name}")
  }
  if config.default >= 0 && config.default < config.options.length() {
    config.options[config.default].value
  } else {
    ""
  }
}

///|
pub fn render_expand_option(
  option : ExpandOption,
  index : Int,
  is_focused : Bool,
  is_expanded : Bool,
) -> String {
  let prefix = if is_expanded { "▼" } else { "▶" }
  let key = option.key
  "\{prefix} [\{key}] \{option.name}"
}
