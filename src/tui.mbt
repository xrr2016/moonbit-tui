///|
pub async fn clear() -> Unit {
  let exit_code = @process.run("powershell", ["ls"])
  println("exit_code: \{exit_code}")
}
