var res: [String] = []

for _ in 0 ..< Int(readLine()!)! { 
  let input = readLine()!.split(separator: " ")
    
  let word: String = input[1].map { String(repeating: $0, count: Int(input[0])!) }.joined()
  res.append(word)
}

print(res.joined(separator: "\n"))