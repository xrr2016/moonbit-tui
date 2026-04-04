///|
test "escape_char" {
  assert_eq(@ansi.ESC, '\u001B')
}

///|
test "reset_code" {
  assert_eq(@ansi.RESET, "\u001B[0m")
}

///|
test "bold" {
  assert_eq(@ansi.bold(), "\u001B[1m")
}

///|
test "italic" {
  assert_eq(@ansi.italic(), "\u001B[3m")
}

///|
test "underline" {
  assert_eq(@ansi.underline(), "\u001B[4m")
}

///|
test "blink" {
  assert_eq(@ansi.blink(), "\u001B[5m")
}

///|
test "reverse" {
  assert_eq(@ansi.reverse(), "\u001B[7m")
}

///|
test "hidden" {
  assert_eq(@ansi.hidden(), "\u001B[8m")
}

///|
test "black_color" {
  assert_eq(@ansi.black(), "\u001B[30m")
}

///|
test "red_color" {
  assert_eq(@ansi.red(), "\u001B[31m")
}

///|
test "green_color" {
  assert_eq(@ansi.green(), "\u001B[32m")
}

///|
test "yellow_color" {
  assert_eq(@ansi.yellow(), "\u001B[33m")
}

///|
test "blue_color" {
  assert_eq(@ansi.blue(), "\u001B[34m")
}

///|
test "magenta_color" {
  assert_eq(@ansi.magenta(), "\u001B[35m")
}

///|
test "cyan_color" {
  assert_eq(@ansi.cyan(), "\u001B[36m")
}

///|
test "white_color" {
  assert_eq(@ansi.white(), "\u001B[37m")
}

///|
test "bg_black" {
  assert_eq(@ansi.bg_black(), "\u001B[40m")
}

///|
test "bg_red" {
  assert_eq(@ansi.bg_red(), "\u001B[41m")
}

///|
test "bg_green" {
  assert_eq(@ansi.bg_green(), "\u001B[42m")
}

///|
test "bg_yellow" {
  assert_eq(@ansi.bg_yellow(), "\u001B[43m")
}

///|
test "bg_blue" {
  assert_eq(@ansi.bg_blue(), "\u001B[44m")
}

///|
test "bg_magenta" {
  assert_eq(@ansi.bg_magenta(), "\u001B[45m")
}

///|
test "bg_cyan" {
  assert_eq(@ansi.bg_cyan(), "\u001B[46m")
}

///|
test "bg_white" {
  assert_eq(@ansi.bg_white(), "\u001B[47m")
}

///|
test "clear_screen" {
  assert_eq(@ansi.clear_screen(), "\u001B[2J\u001B[H")
}

///|
test "clear_line" {
  assert_eq(@ansi.clear_line(), "\u001B[2K")
}

///|
test "cursor_up_default" {
  assert_eq(@ansi.cursor_up(), "\u001B[1A")
}

///|
test "cursor_up_custom" {
  assert_eq(@ansi.cursor_up(lines=3), "\u001B[3A")
}

///|
test "cursor_down_default" {
  assert_eq(@ansi.cursor_down(), "\u001B[1B")
}

///|
test "cursor_down_custom" {
  assert_eq(@ansi.cursor_down(lines=2), "\u001B[2B")
}

///|
test "cursor_forward_default" {
  assert_eq(@ansi.cursor_forward(), "\u001B[1C")
}

///|
test "cursor_forward_custom" {
  assert_eq(@ansi.cursor_forward(cols=5), "\u001B[5C")
}

///|
test "cursor_back_default" {
  assert_eq(@ansi.cursor_back(), "\u001B[1D")
}

///|
test "cursor_back_custom" {
  assert_eq(@ansi.cursor_back(cols=4), "\u001B[4D")
}

///|
test "cursor_save" {
  assert_eq(@ansi.cursor_save(), "\u001B7")
}

///|
test "cursor_restore" {
  assert_eq(@ansi.cursor_restore(), "\u001B8")
}

///|
test "cursor_hide" {
  assert_eq(@ansi.cursor_hide(), "\u001B[?25l")
}

///|
test "cursor_show" {
  assert_eq(@ansi.cursor_show(), "\u001B[?25h")
}

///|
test "move_to" {
  assert_eq(@ansi.move_to(10, 5), "\u001B[5;10H")
}

///|
test "move_to_home" {
  assert_eq(@ansi.move_to(1, 1), "\u001B[1;1H")
}

///|
test "erase_line_to_end" {
  assert_eq(@ansi.erase_line_to_end(), "\u001B[0K")
}

///|
test "erase_line_to_start" {
  assert_eq(@ansi.erase_line_to_start(), "\u001B[1K")
}

///|
test "erase_screen_up" {
  assert_eq(@ansi.erase_screen_up(), "\u001B[1J")
}

///|
test "erase_screen_down" {
  assert_eq(@ansi.erase_screen_down(), "\u001B[0J")
}
