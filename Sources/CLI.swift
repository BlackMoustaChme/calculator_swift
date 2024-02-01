// The Swift Programming Language
// https://docs.swift.org/swift-book

import ArgumentParser


@main

struct Calculator: ParsableCommand{


    @Option(help: "Type of operation that is to be performed on (a, b). Types are: sum, div, mult, substract")
    // var operationType: Int? = nil
    var operationType: String

    @Argument(help: "argument a")
    var a:Float

    @Argument(help: "argument b")
    var b:Float

    public func run() throws {
        let f = a
        let s = b
        let operation = Operations()
        let HTTPOperations = HTTPOperations()
        // print("1")
        switch operationType {
            case "sum":
            // let operation = Operations()
            // print("Sum")
            // print("a + b = \(operation.sum(s, f))")
            print("a + b = \(HTTPOperations.sum(s, f))")

            case "div":
            // let operation = Operations()
            // print("a / b = \(operation.divide(s, f))")
            print("a / b = \(HTTPOperations.divide(s, f))")
            
            case "mult":
            let operation = Operations()
            // print("a * b = \(operation.multiply(s, f))")
            print("a * b = \(HTTPOperations.multiply(s, f))")
            
            case "substract":
            // let operation = Operations()
            // print("a - b = \(operation.substract(s, f))")
            print("a - b = \(HTTPOperations.substract(s, f))")
            
            default:
            break
        }
    }
}
/*
@main
struct Repeat: ParsableCommand {
    @Flag(help: "Include a counter with each repetition.")
    var includeCounter = false

    @Option(name: .shortAndLong, help: "The number of times to repeat 'phrase'.")
    var count: Int? = nil

    @Argument(help: "The phrase to repeat.")
    var phrase: String

    mutating func run() throws {
        let repeatCount = count ?? 2

        for i in 1...repeatCount {
            if includeCounter {
                print("\(i): \(phrase)")
            } else {
                print(phrase)
            }
        }
    }
}*/