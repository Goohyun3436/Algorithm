struct User {
    var name: String = ""
    var age: Int = 0
}

let n = Int(readLine()!)!
var list: [User] = Array(repeating: User(), count: n)

for i in 0..<n {
    let user = readLine()!.split(separator: " ")
    list[i] = User(name: String(user[1]), age: Int(user[0])!)
}

list = list.sorted { $0.age < $1.age }

for el in list {
    print(el.age, el.name)
}