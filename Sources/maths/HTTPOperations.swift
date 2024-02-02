import Foundation

class HTTPOperations{

    let session = URLSession(configuration: .default)

    var urlComponentsSummator = URLComponents(string: 
        "http://localhost:8080/calculator_back3735975708565893560/api/calc/summator")!

    var urlComponentsSubstractor = URLComponents(string: 
        "http://localhost:8080/calculator_back3735975708565893560/api/calc/substractor")!

    var urlComponentsDivisor = URLComponents(string: 
        "http://localhost:8080/calculator_back3735975708565893560/api/calc/divisor")!
    
    var urlComponentsMultiplicator = URLComponents(string: 
        "http://localhost:8080/calculator_back3735975708565893560/api/calc/multiplicator")!



    func sum(_ a:Double, _ b:Double) async -> Double{
        urlComponentsSummator.query = "a=\(a)&b=\(b)"
        let url = urlComponentsSummator.url!
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        do{
        let (data, response) = try await session.data(for: urlRequest)        
            let temp = String(data: data, encoding: .utf8)!
            let value = Double(temp)!
            return value
        }
        catch{
            print("error")
        }
        return 1
    }

    func substract(_ a:Double, _ b:Double) async -> Double{
        urlComponentsSubstractor.query = "a=\(a)&b=\(b)"
        let url = urlComponentsSubstractor.url!
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        do{
        let (data, response) = try await session.data(for: urlRequest)         
            let temp = String(data: data, encoding: .utf8)!
            let value = Double(temp)!
            return value
        }
        catch{
            print("error")
        }
        return 1
    }

    func divide(_ a:Double, _ b:Double) async -> Double{
        urlComponentsDivisor.query = "a=\(a)&b=\(b)"
        let url = urlComponentsDivisor.url!
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        do{
        let (data, response) = try await session.data(for: urlRequest)        
            let temp = String(data: data, encoding: .utf8)!
            let value = Double(temp)!
            return value
        }
        catch{
            print("error")
        }
        return 1
    }

    func multiply(_ a:Double, _ b:Double) async -> Double{
        urlComponentsMultiplicator.query = "a=\(a)&b=\(b)"
        let url = urlComponentsMultiplicator.url!
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        do{
        let (data, response) = try await session.data(for: urlRequest)
            let temp = String(data: data, encoding: .utf8)!
            let value = Double(temp)!
            return value
        }
        catch{
            print("error")
        }
        return 1
    }

}
    
