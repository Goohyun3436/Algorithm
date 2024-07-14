let T: Int = Int(readLine()!)!

var res: [String] = []
for _ in 0 ..< T {
  let s: String = readLine()!
  res.append("\(s.first!)\(s.last!)")
}
print(res.joined(separator: "\n"))