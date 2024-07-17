let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0.reversed()))! }
print(input.max()!)