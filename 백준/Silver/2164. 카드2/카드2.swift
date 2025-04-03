var queue = QueueWithArrayPointer<Int>()

for i in 1...Int(readLine()!)! {
    queue.push(with: i)
}

while queue.count > 1 {
    queue.pop()
    let top = queue.pop()!
    queue.push(with: top)
}

print(queue.top()!)


struct QueueWithArrayPointer<T> {
    private var elements: [T] = []
    private var front = 0
    
    var isEmpty: Bool {
        elements.count - front < 1
    }
    
    var count: Int {
        elements.count - front
    }
    
    mutating func push(with element: T) {
        elements.append(element)
    }
    
    @discardableResult
    mutating func pop() -> T? {
        if isEmpty {
            return nil
        } else {
            defer { front += 1 }  //마지막에 실행
            return elements[front]
        }
    }
    
    func top() -> T? {
        return isEmpty ? nil : elements[front]
    }
}