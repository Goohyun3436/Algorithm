var res: [String] = []

for i in 1 ... Int(readLine()!)! {
  let input: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
  res.append("Case #\(i): \(input[0] + input[1])")
}
print(res.joined(separator: "\n"))