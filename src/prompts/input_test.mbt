///|

test "validate_required_empty" {
  assert_false(@input.validate_required(""))
}

test "validate_required_whitespace" {
  assert_false(@input.validate_required("   "))
}

test "validate_required_valid" {
  assert_true(@input.validate_required("hello"))
}

test "validate_length_valid" {
  assert_true(@input.validate_length(1, 10, "hello"))
}

test "validate_length_too_short" {
  assert_false(@input.validate_length(5, 10, "hi"))
}

test "validate_length_too_long" {
  assert_false(@input.validate_length(1, 3, "hello"))
}

test "validate_email_valid" {
  assert_true(@input.validate_email("test@example.com"))
}

test "validate_email_invalid" {
  assert_false(@input.validate_email("invalid"))
}

test "validate_number_valid" {
  assert_true(@input.validate_number("123"))
}

test "validate_number_invalid" {
  assert_false(@input.validate_number("abc"))
}