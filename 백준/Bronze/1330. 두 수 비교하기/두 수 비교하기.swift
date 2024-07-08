let input = readLine()!.split(separator:" ").map{Int($0)!}
let A: Int = input[0]
let B: Int = input[1]

A > B ? print(">") : A < B ? print("<") : print("==")