//: [Previous](@previous)
//: ### A Generic Type
//: - Callout(Exercise):
//: Define a generic type (a class) called `IntAnalyzer` that specifies a single generic type parameter that must implement the `BinaryInteger` protocol. The generic type parameter should be used to define a property called `value`. You must also define an  initializer which sets the `value` property.
//:
class IntAnalyzer<T: BinaryInteger> {
    let value: T
    
    init(value: T) {
        self.value = value
    }
}

//: - Callout(Exercise):
//: Extend `IntAnalyzer` so that it includes a function called `analyze` which prints the value property, its bit width (`value.bitWidth`), and its sign (`value.signum()`).
//:
extension IntAnalyzer {
    func analyze() {
        print(value)
        print(value.bitWidth)
        print(value.signum())
    }
}

//: - Callout(Exercise):
//: Create an instance of `IntAnalyzer`, then call the `analyze` function.
//:
let analyzer = IntAnalyzer(value: 5)
analyzer.analyze()

//: [Next](@next)
