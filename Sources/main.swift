// The Swift Programming Language
// https://docs.swift.org/swift-book

import ArgumentParser


// @main
struct Calculator: ParsableCommand{


    @Option(help: "Type of operation that is to be performed on (a, b). Types are: sum, div, mult, substract")
    var operationType: String

    @Argument(help: "argument a")
    var a:Float

    @Argument(help: "argument b")
    var b:Float

    public func run() throws {
        let f = a
        let s = b
        print("1")
        switch operationType {
            case "sum":
            let operation = Operations()
            print("a + b = \(operation.sum(s, f))")

            case "div":
            let operation = Operations()
            print("a / b = \(operation.divide(s, f))")
            
            case "mult":
            let operation = Operations()
            print("a * b = \(operation.multiply(s, f))")
            
            case "substract":
            let operation = Operations()
            print("a - b = \(operation.substract(s, f))")
            
            default:
            break
        }
    }
}