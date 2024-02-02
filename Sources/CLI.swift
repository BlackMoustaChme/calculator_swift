import ArgumentParser


@main
struct Calculator: AsyncParsableCommand{

    @Option(help: "Type of operation that is to be performed on (a, b). Types are: sum, div, mult, substract")
    var operationType: String

    @Argument(help: "argument a")
    var a:Double

    @Argument(help: "argument b")
    var b:Double

    public func run() async throws {
        let HTTPOperations = HTTPOperations()

        switch operationType {
            case "sum":
            await print("a + b = \(HTTPOperations.sum(a, b))")

            case "div":
            await print("a / b = \(HTTPOperations.divide(a, b))")
            
            case "mult":
            await print("a * b = \(HTTPOperations.multiply(a, b))")
            
            case "substract":
            await print("a - b = \(HTTPOperations.substract(a, b))")
            
            default:
            break
        }
    }
}