///|
pub struct PasswordConfig {
  message : String
  mask : String
}

///|
pub fn password(config : PasswordConfig) -> String {
  println(config.message)
  "********"
}

///|
pub fn render_password(config : PasswordConfig) -> String {
  config.message + "\n> "
}
