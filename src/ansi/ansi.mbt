///|
pub const ESC : String = "\u001B["

///|
pub let cursor_left : String = ESC + "G"

///|
pub let cursor_hide : String = ESC + "?25l"

///|
pub let cursor_show : String = ESC + "?25h"

///|
pub let cursor_up : (Int) -> String = (rows : Int) => {
  guard rows > 0 else { "" }
  "\{ESC}\{rows}A"
}

///|
pub let cursor_down : (Int) -> String = (rows : Int) => {
  guard rows > 0 else { "" }
  "\{ESC}\{rows}B"
}

///|
// pub let cursor_to : (Int, Int?) -> String = (x : Int, y : Int) => {
//   guard x is  && y is [0..] else { "\{ESC}\{y + 1};{x + 1}H" }

//   "\{ESC}\{x + 1}G"
// }

///|
pub let erase_line : String = ESC + "2K"

///|
pub let erase_lines : (Int) -> String = (lines : Int) => {
  guard lines > 0 else { "" }
  (erase_line + cursor_up(1)).repeat(lines) + erase_line + cursor_left
}

///|
pub fn format(open : Int, close : Int) -> (String) -> String {
  let openCode = "\u001B[\{open}m"
  let closeCode = "\u001B[\{close}m"

  return (input : String) => {
    guard input != "" else { "" }
    "\{openCode}\{input}\{closeCode}"
  }
}

///|
/// Reset the terminal to the default state.
pub let reset : (String) -> String = format(0, 0)

///|
/// Make the text bold.
pub let bold : (String) -> String = format(1, 22)

///|
/// Make the text dim.
pub let dim : (String) -> String = format(2, 22)

///|
/// Make the text italic.
pub let italic : (String) -> String = format(3, 23)

///|
/// Make the text underline.
pub let underline : (String) -> String = format(4, 24)

///|
/// Make the text overline.
pub let overline : (String) -> String = format(53, 55)

///|
/// Make the text inverse.
pub let inverse : (String) -> String = format(7, 27)

///|
/// Make the text hidden.
pub let hidden : (String) -> String = format(8, 28)

///|
/// Make the text strikethrough.
pub let strikethrough : (String) -> String = format(9, 29)

///|
/// Make the text black.
pub let black : (String) -> String = format(30, 39)

///|
/// Make the text red.
pub let red : (String) -> String = format(31, 39)

///|
/// Make the text green.
pub let green : (String) -> String = format(32, 39)

///|
/// Make the text yellow.
pub let yellow : (String) -> String = format(33, 39)

///|
/// Make the text blue.
pub let blue : (String) -> String = format(34, 39)

///|
/// Make the text magenta.
pub let magenta : (String) -> String = format(35, 39)

///|
/// Make the text cyan.
pub let cyan : (String) -> String = format(36, 39)

///|
/// Make the text white.
pub let white : (String) -> String = format(37, 39)

///|
/// Make the text gray.
pub let gray : (String) -> String = format(90, 39)

///|
/// Make the background black.
pub let bgBlack : (String) -> String = format(40, 49)

///|
/// Make the background red.
pub let bgRed : (String) -> String = format(41, 49)

///|
/// Make the background green.
pub let bgGreen : (String) -> String = format(42, 49)

///|
/// Make the background yellow.
pub let bgYellow : (String) -> String = format(43, 49)

///|
/// Make the background blue.
pub let bgBlue : (String) -> String = format(44, 49)

///|
/// Make the background magenta.
pub let bgMagenta : (String) -> String = format(45, 49)

///|
/// Make the background cyan.
pub let bgCyan : (String) -> String = format(46, 49)

///|
/// Make the background white.
pub let bgWhite : (String) -> String = format(47, 49)

///|
/// Make the background gray.
pub let bgGray : (String) -> String = format(100, 49)

///|
/// Make the text red bright.
pub let redBright : (String) -> String = format(91, 39)

///|
/// Make the text green bright.
pub let greenBright : (String) -> String = format(92, 39)

///|
/// Make the text yellow bright.
pub let yellowBright : (String) -> String = format(93, 39)

///|
/// Make the text blue bright.
pub let blueBright : (String) -> String = format(94, 39)

///|
/// Make the text magenta bright.
pub let magentaBright : (String) -> String = format(95, 39)

///|
/// Make the text cyan bright.
pub let cyanBright : (String) -> String = format(96, 39)

///|
/// Make the text white bright.
pub let whiteBright : (String) -> String = format(97, 39)

///|
/// Make the background red bright.
pub let bgRedBright : (String) -> String = format(101, 49)

///|
/// Make the background green bright.
pub let bgGreenBright : (String) -> String = format(102, 49)

///|
/// Make the background yellow bright.
pub let bgYellowBright : (String) -> String = format(103, 49)

///|
/// Make the background blue bright.
pub let bgBlueBright : (String) -> String = format(104, 49)

///|
/// Make the background magenta bright.
pub let bgMagentaBright : (String) -> String = format(105, 49)

///|
/// Make the background cyan bright.
pub let bgCyanBright : (String) -> String = format(106, 49)

///|
/// Make the background white bright.
pub let bgWhiteBright : (String) -> String = format(107, 49)
