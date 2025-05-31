let fileIO = FileIO()
let n = fileIO.readInt()
var dict: [Int: Int] = [:]
let list = fileIO.readInts(count: n)
let sorted = Set(list).sorted()

for (idx, num) in sorted.enumerated() {
    dict[num, default: 0] = idx
}

for num in list {
    print(dict[num]!, terminator: " ")
}

//MARK: - HelperAdd commentMore actions
import Foundation

final class FileIO {
    private var buffer: [UInt8]
    private var index: Int

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile()) + [UInt8(0)]
        index = 0
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }
        return buffer.withUnsafeBufferPointer { $0[index] }
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10 || now == 32 {
            now = read()
        }
        if now == 45 { isPositive.toggle(); now = read() }
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now - 48)
            now = read()
        }

        return sum * (isPositive ? 1 : -1)
    }

    @inline(__always) func readInts(count: Int) -> [Int] {
        return (0 ..< count).map { _ in readInt() }
    }
}