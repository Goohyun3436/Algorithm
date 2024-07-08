let score = Int(readLine()!)!

if (90...100).contains(score) {
  print("A")
} else if (80...89).contains(score) {
  print("B")
} else if (70...79).contains(score) {
  print("C")
} else if (60...69).contains(score) {
  print("D")
}  else {
  print("F")
}