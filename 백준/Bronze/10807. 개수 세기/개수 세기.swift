let n = readLine()!
let input = readLine()!.split(separator: " ")
let v = readLine()!

var res: Int = 0
for num in input {
  if num == v {
    res += 1
  }
}
print(res)