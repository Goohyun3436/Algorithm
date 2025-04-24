let P = Int(readLine()!)!
var lines = Array(repeating: Array(repeating: 0, count: 20), count: P)
var count = Array(repeating: 0, count: P)

for p in 0..<P {
    var input = readLine()!.split(separator: " ").map { Int($0)! }
    let _ = input.removeFirst()
    lines[p] = input
}

for i in 0..<20 {
    for p in 0..<P {
        for t in stride(from: i, to: 0, by: -1) {
            if lines[p][t - 1] > lines[p][t] {
                lines[p].swapAt(t - 1, t)
                count[p] += 1
            } else {
                break
            }
        }
    }
}

for (i, c) in count.enumerated() {
    print("\(i + 1) \(c)")
}