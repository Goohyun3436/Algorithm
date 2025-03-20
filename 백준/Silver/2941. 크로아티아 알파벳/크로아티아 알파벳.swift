import Foundation

var input = readLine()!
let croatiaAlphabet = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]

croatiaAlphabet.forEach {
    input = input.replacingOccurrences(of: $0, with: "@")
}

print(input.count)

//let input = readLine()!
//let regex = /c=|c-|dz=|d-|lj|nj|s=|z=/
//let count = input.replacing(regex, with: "@").count
//print(count)