var res: [String] = []
for n in 1 ... Int(readLine()!)! {
  let start: String = String(repeating: "*", count: n)
  res.append(start)
}
print(res.joined(separator: "\n"))