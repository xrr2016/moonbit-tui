///|
extern "js" fn js_get_terminal_columns() -> Int =
  #| () => {
  #|   if (typeof process === 'undefined') return 80;
  #|   return process.stdout.columns || 80;
  #| }

///|
extern "js" fn js_get_terminal_rows() -> Int =
  #| () => {
  #|   if (typeof process === 'undefined') return 24;
  #|   return process.stdout.rows || 24;
  #| }

///|
extern "js" fn js_enable_raw() -> Int =
  #| () => {
  #|   if (process.stdin.isTTY) {
  #|     process.stdin.setRawMode(true);
  #|     return 0;
  #|   }
  #|   return -1;
  #| }

///|
pub fn get_terminal_size() -> (Int, Int) {
  (js_get_terminal_columns(), js_get_terminal_rows())
}

///|
pub fn set_raw_mode() -> Unit {
  js_enable_raw() |> ignore
}
