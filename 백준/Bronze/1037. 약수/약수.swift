let _ = readLine()
let factor = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

print(factor.first! * factor.last!)