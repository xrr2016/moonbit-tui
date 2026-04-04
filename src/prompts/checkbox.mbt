///|
pub struct CheckboxOption {
  name : String
  value : String
  checked : Bool
}

///|
pub struct CheckboxConfig {
  message : String
  options : Array[CheckboxOption]
}

///|
pub fn checkbox(config : CheckboxConfig) -> Array[String] {
  println(config.message)
  let mut selected = []
  for i = 0; i < config.options.length(); i = i + 1 {
    let option = config.options[i]
    let mark = if option.checked { "[✓]" } else { "[ ]" }
    println("\{mark} \{option.name}")
    if option.checked {
      selected = selected + [option.value]
    }
  }
  selected
}

///|
pub fn render_checkbox_option(
  option : CheckboxOption,
  index : Int,
  is_focused : Bool,
) -> String {
  let mark = if option.checked { "[✓]" } else { "[ ]" }
  "\{mark} \{option.name}"
}
