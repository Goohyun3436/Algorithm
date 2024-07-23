let input: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
let piece = [1, 1, 2, 2, 2, 8]

for i in 0 ..< piece.count {
    print(piece[i] - input[i], terminator: " ")
}