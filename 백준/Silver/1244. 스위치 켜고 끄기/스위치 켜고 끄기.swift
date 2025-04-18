let n = Int(readLine()!)!
var switches = readLine()!.split(separator: " ").map { Int($0)! }
switches.reserveCapacity(n)
let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let switchNum = input[1]
    let index = switchNum - 1
    
    switch input[0] {
    case 1:
        for i in stride(from: index, to: switches.count, by: switchNum) {
            toggleSwitch(at: i)
        }
    case 2:
        toggleSwitch(at: index)
        
        var prev = index
        var next = index
        
        while true {
            prev -= 1
            next += 1
            
            guard prev >= 0 && next < switches.count else {
                break
            }
            
            guard switches[prev] == switches[next] else {
                break
            }
            
            toggleSwitch(at: prev)
            toggleSwitch(at: next)
        }
    default:
        continue
    }
}

for i in 0...n / 20 {
    let start = i * 20
    let end = start + 19 <= switches.count - 1 ? start + 19 : switches.count - 1
    
    guard start <= switches.count - 1 else { break }
    
    print(switches[start...end].map { String($0) }.joined(separator: " "))
}

//MARK: - Helper
func toggleSwitch(at index: Int) {
    switches[index] = switches[index].toggle()
}

extension Int {
    func toggle() -> Int {
        self == 0 ? 1 : 0
    }
}