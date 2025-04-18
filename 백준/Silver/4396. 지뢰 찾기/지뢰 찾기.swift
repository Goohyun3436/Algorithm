import Foundation

let n = Int(readLine()!)!
var diff = Array(repeating: Array(repeating: 0, count: n), count: n)
var answer = Array(repeating: Array(repeating: ".", count: n), count: n)
var isBoom = false

for i in 0..<n {
    for (j, char) in readLine()!.enumerated() {
        if char == "*" {
            answer[i][j] = "*"
            
            for row in i - 1...i + 1 {
                for column in j - 1...j + 1 {
                    guard row >= 0 && row < n && column >= 0 && column < n else {
                        continue
                    }
                    diff[row][column] += 1
                }
            }
        }
    }
}

for i in 0..<n {
    for (j, char) in readLine()!.enumerated() {
        let diff = diff[i][j]
        
        if char == "x" {
            if answer[i][j] == "*" {
                isBoom = true
                continue
            }
            
            answer[i][j] = String(diff)
        }
    }
}

for line in answer {
    if isBoom {
        print(line.joined())
    } else {
        print(line.joined().replacingOccurrences(of: "*", with: "."))
    }
}