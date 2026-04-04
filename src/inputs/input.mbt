///|
pub enum Key {
  Up
  Down
  Left
  Right
  Home
  End
  PageUp
  PageDown
  Enter
  Escape
  Space
  Backspace
  Tab
  Delete
  Char(String)
  CtrlC
  CtrlD
  Unknown
}

///|
pub fn key_to_string(key : Key) -> String {
  if key is Up {
    "↑"
  } else if key is Down {
    "↓"
  } else if key is Left {
    "←"
  } else if key is Right {
    "→"
  } else if key is Home {
    "Home"
  } else if key is End {
    "End"
  } else if key is PageUp {
    "PageUp"
  } else if key is PageDown {
    "PageDown"
  } else if key is Enter {
    "Enter"
  } else if key is Escape {
    "Escape"
  } else if key is Space {
    " "
  } else if key is Backspace {
    "Backspace"
  } else if key is Tab {
    "Tab"
  } else if key is Delete {
    "Delete"
  } else if key is CtrlC {
    "^C"
  } else if key is CtrlD {
    "^D"
  } else if key is Unknown {
    "?"
  } else {
    "?"
  }
}

///|
pub fn is_arrow_key(key : Key) -> Bool {
  key is Up || key is Down || key is Left || key is Right
}

///|
pub fn is_navigation_key(key : Key) -> Bool {
  key is Up ||
  key is Down ||
  key is Left ||
  key is Right ||
  key is Home ||
  key is End
}

///|
pub fn is_modifier_key(key : Key) -> Bool {
  key is Escape || key is Tab
}
