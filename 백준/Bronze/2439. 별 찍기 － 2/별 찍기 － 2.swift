let n: Int = Int(readLine()!)!
var res: [String] = []

for i in 1 ... n {
  let gap: String = String(repeating: " ", count: n - i)
  let star: String = String(repeating: "*", count: i)
  res.append(gap + star)
}
print(res.joined(separator: "\n"))