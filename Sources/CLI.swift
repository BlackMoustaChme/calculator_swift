import ArgumentParser

@main
struct Calculator: ParsableCommand {

    @Option(help: "Type of operation that is to be performed on (a, b). Types are: sum, div, mult, substract")
    var operationType: String

    @Argument(help: "argument a")
    var a: Float

    @Argument(help: "argument b")
    var b: Float

    public func run() throws {
        let operation = Operations()
        switch operationType {
            case "sum":
            print("a + b = \(operation.sum(a, b))")

            case "div":
            print("a / b = \(operation.divide(a, b))")
            
            case "mult":
            print("a * b = \(operation.multiply(a, b))")
            
            case "substract":
            print("a - b = \(operation.substract(a, b))")
            
            default:
            break
        }
    }
}