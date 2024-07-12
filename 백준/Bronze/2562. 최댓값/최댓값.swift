var maxInfo: [Int] = [0, 0]

for i in 1 ... 9 {
  let num: Int = Int(readLine()!)!
  
  if maxInfo[0] < num {
    maxInfo = [num, i]
  }
}
print("\(maxInfo[0])\n\(maxInfo[1])")