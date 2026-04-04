///|
pub struct RawlistConfig {
  message : String
  options : Array[String]
  default : Int
}

///|
pub fn rawlist(config : RawlistConfig) -> Int {
  println(config.message)
  for i = 0; i < config.options.length(); i = i + 1 {
    let marker = if i == config.default { ">" } else { " " }
    println("\{i + 1}) \{marker} \{config.options[i]}")
  }
  config.default
}

///|
pub fn render_rawlist_option(
  option : String,
  index : Int,
  is_selected : Bool,
) -> String {
  let marker = if is_selected { ">" } else { " " }
  "\{index + 1}) \{marker} \{option}"
}
