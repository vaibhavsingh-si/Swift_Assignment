class Node<T> {
    var value: T
    var next: Node<T>?
    
    init(_ value: T) {
        self.value = value
    }
}

class Queue<T> {
    var front: Node<T>?
    var rear: Node<T>?
    var count: Int
    
    init() {
        self.front = nil
        self.rear = nil
        self.count = 0
    }
    
    //Add from Tail of Queue
    func add(_ value: T) {
        let newNode = Node(value)
        
        if front == nil {
            front = newNode
            rear = newNode
        } else {
            rear?.next = newNode
            rear = newNode
        }
        
        count += 1
    }
    
    //Remove from Head of Queue
    func remove() -> T? {
        // Not Empty Queue
        if let currentFront = front {
            front = currentFront.next
            if front == nil {
                rear = nil
            }
            count -= 1
            return currentFront.value
        } else {
            return nil // If Empty
        }
    }
    
    //Length of Queue
    func length() -> Int {
        return count
    }
    
    // Print the Queue
    func printQueue() {
        var current = front
        while current != nil {
            print(current!.value, terminator: " ")
            current = current?.next
        }
    }
}

let queue = Queue<Int>()
queue.add(1)
queue.add(2)
queue.add(3)
queue.add(4)
queue.add(5)
queue.add(6)
print("Removed Value:-", queue.remove() ?? "Empty")
print("Length of Queue:-", queue.length())
print("Final Queue Left")
queue.printQueue()
