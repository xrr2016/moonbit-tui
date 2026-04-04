///|

pub struct ConfirmConfig {
  message : String
  initial : Bool
}

pub fn confirm(config : ConfirmConfig) -> Bool {
  println(config.message)
  println("[✓] Yes  [ ] No")
  config.initial
}

pub fn render_confirm(config : ConfirmConfig, selected : Bool) -> String {
  let output = config.message + "\n"
  if selected {
    output + "[✓] Yes  [ ] No\n"
  } else {
    output + "[ ] Yes  [✓] No\n"
  }
}