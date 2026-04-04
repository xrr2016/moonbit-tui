///|

pub struct NumberConfig {
  message : String
  default : Int
  min : Int
  max : Int
}

pub fn number(config : NumberConfig) -> Int {
  println(config.message)
  if config.default > 0 {
    println("(default: \{config.default})")
  }
  config.default
}

pub fn render_number(config : NumberConfig, value : Int) -> String {
  config.message + "\n> "
}