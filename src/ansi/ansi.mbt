///|
// ansi/ansi.mbt

pub fn clear_line() -> Unit {
  println("\x1B[2K")
}

///|
pub fn clear_screen() -> Unit {
  println("\x1b[2J")
  println("\x1b[H")
}
