let n: Double = Double(readLine()!)!
let scores: [Double] = readLine()!.split(separator: " ").map { Double($0)! }
let m: Double = scores.max()!

var newScores: [Double] = []
for score in scores {
  newScores.append(Double(score / m * 100))
}

let average: Double = newScores.reduce(0, +) / n
print(average)