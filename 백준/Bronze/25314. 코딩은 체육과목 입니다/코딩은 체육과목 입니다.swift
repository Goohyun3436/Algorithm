let byte: Int = Int(readLine()!)!

let res: String = String(repeating: "long ", count: byte / 4) + "int"
print(res)