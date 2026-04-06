///|
pub struct SelectOption {
  name : String
  value : String
  description : String
}

///|
pub struct SelectConfig {
  message : String
  options : Array[SelectOption]
  initial : Int
}

///|
pub fn render_option(
  option : SelectOption,
  index : Int,
  selected : Bool,
  is_focused : Bool,
) -> String {
  let prefix = if selected { "● " } else { "○ " }
  let indicator = if is_focused { "▶" } else { " " }
  indicator + prefix + option.name
}

///|
pub fn select(config : SelectConfig) -> Int {
  println(config.message)
  for i = 0; i < config.options.length(); i = i + 1 {
    let option = config.options[i]
    let is_focused = i == config.initial
    println(render_option(option, i, i == config.initial, is_focused))
  }
  config.initial
}

///|
pub fn select_value(config : SelectConfig) -> String {
  let index = select(config)
  if index < 0 || index >= config.options.length() {
    ""
  } else {
    config.options[index].value
  }
}
