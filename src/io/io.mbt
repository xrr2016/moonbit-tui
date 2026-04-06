
pub fn terminal_size() -> Unit {
 let (cols, rows) = @mizchi_io.get_terminal_size()
 println("terminal size: \{cols} \{rows}")
}
