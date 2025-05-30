let n = Int(readLine()!)!
var five = n / 5
var three = 0
var answer = -1

while five >= 0 {
    var remain = n
    
    if five != 0 {
        remain = n - (5 * five)
    }
    
    if remain == 0 {
        answer = five + three
        break
    }
    
    if remain % 3 == 0 {
        three = remain / 3
        answer = five + three
        break
    }
    
    five -= 1
}

print(answer)