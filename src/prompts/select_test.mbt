///|
test "render_option_selected_focused" {
  let option = { name: "Option 1", value: "opt1" }
  let result = @select.render_option(option, 0, true, true)
  assert_true(result.contains("●"))
  assert_true(result.contains("Option 1"))
}

///|
test "render_option_not_selected" {
  let option = { name: "Option 2", value: "opt2" }
  let result = @select.render_option(option, 1, false, false)
  assert_true(result.contains("○"))
  assert_true(result.contains("Option 2"))
}
