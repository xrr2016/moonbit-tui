///|
pub const ESC : Char = '\u001B'

///|
pub const RESET : String = "\u001B[0m"

///|
pub const BOLD : String = "\u001B[1m"

///|
pub const DIM : String = "\u001B[2m"

///|
pub const ITALIC : String = "\u001B[3m"

///|
pub const UNDERLINE : String = "\u001B[4m"

///|
pub const BLINK : String = "\u001B[5m"

///|
pub const REVERSE : String = "\u001B[7m"

///|
pub const HIDDEN : String = "\u001B[8m"

///|
const BLACK : Int = 30

///|
const RED : Int = 31

///|
const GREEN : Int = 32

///|
const YELLOW : Int = 33

///|
const BLUE : Int = 34

///|
const MAGENTA : Int = 35

///|
const CYAN : Int = 36

///|
const WHITE : Int = 37

///|
const BG_BLACK : Int = 40

///|
const BG_RED : Int = 41

///|
const BG_GREEN : Int = 42

///|
const BG_YELLOW : Int = 43

///|
const BG_BLUE : Int = 44

///|
const BG_MAGENTA : Int = 45

///|
const BG_CYAN : Int = 46

///|
const BG_WHITE : Int = 47

///|
pub fn bold() -> String {
  BOLD
}

///|
pub fn dim() -> String {
  DIM
}

///|
pub fn italic() -> String {
  ITALIC
}

///|
pub fn underline() -> String {
  UNDERLINE
}

///|
pub fn blink() -> String {
  BLINK
}

///|
pub fn reverse() -> String {
  REVERSE
}

///|
pub fn hidden() -> String {
  HIDDEN
}

///|
pub fn reset() -> String {
  RESET
}

///|
pub fn black() -> String {
  color(BLACK)
}

///|
pub fn red() -> String {
  color(RED)
}

///|
pub fn green() -> String {
  color(GREEN)
}

///|
pub fn yellow() -> String {
  color(YELLOW)
}

///|
pub fn blue() -> String {
  color(BLUE)
}

///|
pub fn magenta() -> String {
  color(MAGENTA)
}

///|
pub fn cyan() -> String {
  color(CYAN)
}

///|
pub fn white() -> String {
  color(WHITE)
}

///|
pub fn bg_black() -> String {
  color(BG_BLACK)
}

///|
pub fn bg_red() -> String {
  color(BG_RED)
}

///|
pub fn bg_green() -> String {
  color(BG_GREEN)
}

///|
pub fn bg_yellow() -> String {
  color(BG_YELLOW)
}

///|
pub fn bg_blue() -> String {
  color(BG_BLUE)
}

///|
pub fn bg_magenta() -> String {
  color(BG_MAGENTA)
}

///|
pub fn bg_cyan() -> String {
  color(BG_CYAN)
}

///|
pub fn bg_white() -> String {
  color(BG_WHITE)
}

///|
fn color(code : Int) -> String {
  "\u001B[\{code}m"
}

///|
pub fn color_with_bg(fg : Int, bg : Int) -> String {
  "\u001B[\{fg};\{bg}m"
}

///|
pub fn clear_line() -> String {
  "\u001B[2K"
}

///|
pub fn clear_screen() -> String {
  "\u001B[2J\u001B[H"
}

///|
pub fn cursor_up(lines? : Int = 1) -> String {
  "\u001B[\{lines}A"
}

///|
pub fn cursor_down(lines? : Int = 1) -> String {
  "\u001B[\{lines}B"
}

///|
pub fn cursor_forward(cols? : Int = 1) -> String {
  "\u001B[\{cols}C"
}

///|
pub fn cursor_back(cols? : Int = 1) -> String {
  "\u001B[\{cols}D"
}

///|
pub fn cursor_save() -> String {
  "\u001B7"
}

///|
pub fn cursor_restore() -> String {
  "\u001B8"
}

///|
pub fn cursor_hide() -> String {
  "\u001B[?25l"
}

///|
pub fn cursor_show() -> String {
  "\u001B[?25h"
}

///|
pub fn move_to(x : Int, y : Int) -> String {
  "\u001B[\{y};\{x}H"
}

///|
pub fn erase_line_to_end() -> String {
  "\u001B[0K"
}

///|
pub fn erase_line_to_start() -> String {
  "\u001B[1K"
}

///|
pub fn erase_screen_up() -> String {
  "\u001B[1J"
}

///|
pub fn erase_screen_down() -> String {
  "\u001B[0J"
}
