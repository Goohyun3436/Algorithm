let n = Int(readLine()!)!
let usedList = readLine()!.split(separator: " ")

var y = 0
var m = 0

for used in usedList {
    y += getCharge(used: Int(used)!, for: 30, price: 10)
    m += getCharge(used: Int(used)!, for: 60, price: 15)
}

if y > m {
    print("M \(m)")
} else if y < m {
    print("Y \(y)")
} else {
    print("Y M \(y)")
}

func getCharge(used: Int, for sec: Int, price: Int) -> Int {
    let share = used / sec
    let remainder = used % sec
    
    var charge = share * price
    
    if share > 0 && remainder >= 0 {
        charge += price
    }
    
    if share == 0 && remainder > 0 {
        charge += price
    }
    
    return charge
}