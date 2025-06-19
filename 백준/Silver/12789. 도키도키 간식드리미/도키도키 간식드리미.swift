let n = Int(readLine()!)!
var students = readLine()!.split(separator: " ").reversed().map { Int($0)! }
var temp: [Int] = []
var goal: [Int] = [0]

while !(students.isEmpty && temp.isEmpty) {
    let next = goal.last! + 1
    let tempStudent = temp.last
    
    if students.isEmpty && next != tempStudent {
        break
    }
    
    if next == tempStudent {
        goal.append(temp.removeLast())
        continue
    }
    
    let student = students.removeLast()
    
    if next == student {
        goal.append(student)
    } else {
        temp.append(student)
    }
}

print(goal.count - 1 == n ? "Nice" : "Sad")