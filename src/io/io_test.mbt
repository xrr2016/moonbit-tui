///|
test "get terminal size" {
  let (cols, rows) = @io.get_terminal_size()
  println("terminal size: \{cols} x \{rows}")
}

///|
test "set raw mode" {
  @io.set_raw_mode()
}
