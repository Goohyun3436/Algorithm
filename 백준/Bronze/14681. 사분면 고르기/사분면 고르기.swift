let x = Int(readLine()!)!
let y = Int(readLine()!)!

x > 0 && y > 0
  ? print(1)
  : x < 0 && y > 0
  ? print(2)
  : x < 0 && y < 0
  ? print(3)
  : print(4)