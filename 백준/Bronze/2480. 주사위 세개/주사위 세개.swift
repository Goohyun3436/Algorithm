var dices = Array(repeating: 0, count: 6)
let input = readLine()!.split(separator: " ")

for result in input {
    dices[Int(result)! - 1] += 1
}

print(getPrice())

func getPrice() -> Int {
    var maxInDiff = 0
    
    for (dice, count) in dices.enumerated() {
        if count == 3 {
            return 10000 + (dice + 1) * 1000
        }
        
        if count == 2 {
            return 1000 + (dice + 1) * 100
        }
        
        if count == 1 {
            maxInDiff = dice + 1
        }
    }
    
    return maxInDiff * 100
}