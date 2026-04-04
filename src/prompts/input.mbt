///|

pub struct InputConfig {
  message : String
  default : String
  validator : (String) -> Bool
  transformer : (String) -> String
}

pub fn input(config : InputConfig) -> String {
  println(config.message)
  if config.default.length() > 0 {
    println("(default: \{config.default})")
  }
  config.default
}

pub fn render_input(config : InputConfig, value : String, cursor_pos : Int) -> String {
  config.message + "\n> " + value
}

pub fn validate_required(value : String) -> Bool {
  value.trim().length() > 0
}

pub fn validate_length(min : Int, max : Int, value : String) -> Bool {
  let len = value.length()
  len >= min && len <= max
}

pub fn validate_email(value : String) -> Bool {
  value.contains("@") && value.contains(".")
}

pub fn validate_number(_value : String) -> Bool {
  false
}