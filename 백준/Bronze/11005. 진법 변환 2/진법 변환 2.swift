let input = readLine()!.split(separator: " ").map { Int($0)! }
let answer = String(input[0], radix: input[1]).uppercased()
print(answer)