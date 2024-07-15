let s: String = readLine()!
let alphabet: String = "abcdefghijklmnopqrstuvwxyz"

var res: [String] = []
for i in alphabet {
  var idx: Int = -1
  
  if let sIdx = s.firstIndex(of: i) {
    idx = s.distance(from: s.startIndex, to: sIdx)
  }
  
  res.append(String(idx))
}
print(res.joined(separator: " "))