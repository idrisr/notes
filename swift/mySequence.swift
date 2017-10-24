class FiniteFibonacci: IteratorProtocol {
	private(set) var last: Int = 0
	private(set) var total: Int
	private(set) var max: Int
	private(set) var seed1: Int
	private(set) var seed2: Int

	private var count: Int = 0

	init(seed1: Int = 1, seed2: Int = 1, max: Int ) {
		total = seed1 + seed2
		self.seed1 = seed1
		self.seed2 = seed2
		self.max = max
	}

	func next() -> Int? {
		switch(count) {
			case let x where x==0: 
				count+=1
				return seed1
			case let x where x==1: 
				count+=1
				last = seed2
				return seed2
			default: 
				let temp = last
				last = total

				if total > 100 {
					return nil
				} else {
					total = total + temp
					return total
				}
		}
}
}

class Fibonacci: Sequence {
    private(set) var seed1: Int
    private(set) var seed2: Int
    private(set) var max: Int

    init(seed1: Int, seed2: Int, max: Int) {
        self.seed1 = seed1
        self.seed2 = seed2
        self.max = max
    }

    func makeIterator() -> FiniteFibonacci {
        return FiniteFibonacci(seed1: seed1, seed2: seed2, max: max)
    }
}

let f = Fibonacci(seed1: 1, seed2: 1, max: 100)
f.forEach{ print($0) }
