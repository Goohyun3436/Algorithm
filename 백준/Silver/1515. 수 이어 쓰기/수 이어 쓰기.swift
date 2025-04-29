let remains = readLine()!.map { String($0) }
var num = 1
var index = 0

while true {
    let numbers = String(num).map { String($0) }
    
    for num in numbers {
        if remains[index] == num {
            index += 1
            
            guard index != remains.count else {
                break
            }
        }
    }
    
    guard index != remains.count else {
        break
    }
    
    num += 1
}

print(num)