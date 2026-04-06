///|
extern "js" fn js_get_terminal_columns() -> Int =
  #| () => {
  #|   if (typeof process === 'undefined') return 80;
  #|   return process.stdout.columns || 80;
  #| }

///|
/// Get terminal rows
extern "js" fn js_get_terminal_rows() -> Int =
  #| () => {
  #|   if (typeof process === 'undefined') return 24;
  #|   return process.stdout.rows || 24;
  #| }

///|
extern "js" fn enable_raw() -> Int =
  #| () => {
  #|   if (process.stdin.isTTY) {
  #|     process.stdin.setRawMode(true);
  #|     return 0;
  #|   }
  #|   return -1;
  #|  }

///|
/// Get the terminal size.
pub fn get_terminal_size() -> (Int, Int) {
  (get_terminal_cols(), get_terminal_rows())
}

///|
/// Set the terminal to raw mode.
pub fn set_raw_mode() {
  println("set_raw_mode")
}
