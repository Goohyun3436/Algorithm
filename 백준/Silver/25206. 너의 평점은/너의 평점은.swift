let grade: [String: Double] = [
    "A+": 4.5,
    "A0": 4.0,
    "B+": 3.5,
    "B0": 3.0,
    "C+": 2.5,
    "C0": 2.0,
    "D+": 1.5,
    "D0": 1.0,
    "F": 0.0
]
var total = 0.0
var gradeTotal = 0.0

while let line = readLine() {
    guard line.last != "P" else { continue }
    
    let subject = line.split(separator: " ")
    
    let score = grade["\(subject.last!)"]!
    let gradePoint = Double(subject[1])!
    
    total += score * gradePoint
    gradeTotal += gradePoint
}

print(total / gradeTotal)