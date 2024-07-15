let n = Int(readLine()!)!
let nums: String = readLine()!

var res: Int = 0
for i in nums {
  res += Int(String(i))!
}
print(res)