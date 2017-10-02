//: Playground - noun: a place where people can play


protocol Queue {
    associatedtype Element

    mutating func enqueue(_ newElement: Element)
    mutating func dequeue() -> Element?
}

struct FIFOQueue<Element>: Queue {
    fileprivate var left: [Element] = []
    fileprivate var right: [Element] = []

    mutating func enqueue(_ newElement: Element) {
        right.append(newElement)
    }

    mutating func dequeue() -> Element? {
        if left.isEmpty {
            left = right.reversed()
            right.removeAll()
        }
        return left.popLast()
    }
}

var f = FIFOQueue<Int>()
f.enqueue(8)
f.enqueue(6)
f.enqueue(7)
f.enqueue(5)
f.enqueue(3)
f.enqueue(0)
f.enqueue(9)

print(f)
let a = f.dequeue()
print(a)
print(f)
f.enqueue(13)
print(f)