let input: String = readLine()!
let dial: [String] = ["", "ABC", "DEF", "GHI", "JKL", "MNO", "PQRS", "TUV", "WXYZ"]
var time: Int = 0

for alphabet in input {
  if let i = dial.firstIndex(where: { $0.contains(alphabet)}) {
    time += 2 + i
  }
}

print(time)