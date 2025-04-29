let remains = readLine()!.map { $0 }
var num = 1
var index = 0

while true {
    let numStr = String(num)
    
    for ch in numStr {
        guard index < remains.count else {
            break
        }
        
        if remains[index] == ch {
            index += 1
        }
    }
    
    guard index < remains.count else {
        break
    }
    
    num += 1
}

print(num)