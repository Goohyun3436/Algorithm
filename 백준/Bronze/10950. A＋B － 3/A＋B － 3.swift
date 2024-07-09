let N: Int = Int(readLine()!)!
var inputs: [[Int]] = []
for _ in 0 ..< N {
    inputs.append(readLine()!.split(separator: " ").map { Int($0)! })
}

for input in inputs {
    print(input[0] + input[1])
}