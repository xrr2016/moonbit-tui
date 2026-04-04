///|
pub struct SearchConfig {
  message : String
  default : String
}

///|
pub fn search(config : SearchConfig) -> String {
  println(config.message)
  println("(Press Enter to search)")
  config.default
}

///|
pub fn render_search(config : SearchConfig, query : String) -> String {
  config.message + "\n> " + query
}
