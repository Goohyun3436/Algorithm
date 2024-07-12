var res: [String] = []
while let line = readLine() {
  if (line == "0 0") {
    break
  }

  let input = line.split(separator: " ").map{ Int($0)! }
  res.append("\(input[0] + input[1])")
}
print(res.joined(separator: "\n"))