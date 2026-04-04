///|
test "key_to_string_arrow" {
  let _ = @input.key_to_string(@input.Up)
  let _ = @input.key_to_string(@input.Down)
  let _ = @input.key_to_string(@input.Left)
  let _ = @input.key_to_string(@input.Right)
}

///|
test "key_to_string_enter" {
  let _ = @input.key_to_string(@input.Enter)
}

///|
test "key_to_string_escape" {
  let _ = @input.key_to_string(@input.Escape)
}

///|
test "key_to_string_char" {
  let key = @input.Char("a")
  assert_eq(@input.key_to_string(key), "a")
}

///|
test "is_arrow_key" {
  let up = @input.Up
  assert_true(@input.is_arrow_key(up))
  let down = @input.Down
  assert_true(@input.is_arrow_key(down))
  let enter = @input.Enter
  assert_false(@input.is_arrow_key(enter))
}

///|
test "is_navigation_key" {
  let up = @input.Up
  assert_true(@input.is_navigation_key(up))
  let page_down = @input.PageDown
  assert_true(@input.is_navigation_key(page_down))
  let space = @input.Space
  assert_false(@input.is_navigation_key(space))
}
