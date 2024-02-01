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

    // var dataTask = URLSessionDataTask?

    func sum(_ a:Float, _ b:Float) -> Float{
        urlComponentsSummator.query = "a=\(a)&b=\(b)"
        let url = urlComponentsSummator.url!
        let task = session.dataTask(with: url) {data, response, error in
        if let error = error {
            // self.handleClientError(error)
            print(error)
            return
        }
        guard let httpResponse = response as? HTTPURLResponse,
            (200...299).contains(httpResponse.statusCode) else {
            // self.handleServerError(response)
            print("\(response)")
            return
        }
        let data = data
        print("\(data)")
        }
        task.resume()
        return a + b
    }

    func substract(_ a:Float, _ b:Float) -> Float{
        urlComponentsSubstractor.query = "a=\(a)&b=\(b)"
        let url = urlComponentsSubstractor.url!
        let task = session.dataTask(with: url) {data, response, error in
        if let error = error {
            // self.handleClientError(error)
            print(error)
            return
        }
        guard let httpResponse = response as? HTTPURLResponse,
            (200...299).contains(httpResponse.statusCode) else {
            // self.handleServerError(response)
            print(response)
            return
        }
        let data = data
        print(data)
        }
        task.resume()
        return a - b
    }

    func divide(_ a:Float, _ b:Float) -> Float{
        urlComponentsDivisor.query = "a=\(a)&b=\(b)"
        let url = urlComponentsDivisor.url!
        let task = session.dataTask(with: url) {data, response, error in
        if let error = error {
            // self.handleClientError(error)
            print(error)
            return
        }
        guard let httpResponse = response as? HTTPURLResponse,
            (200...299).contains(httpResponse.statusCode) else {
            // self.handleServerError(response)
            print(response)
            return
        }
        let data = data
        print(data)
        }
        task.resume()
        return a / b
    }

    func multiply(_ a:Float, _ b:Float) -> Float{
        urlComponentsMultiplicator.query = "a=\(a)&b=\(b)"
        let url = urlComponentsMultiplicator.url!
        let task = session.dataTask(with: url) {data, response, error in
        if let error = error {
            // self.handleClientError(error)
            print(error)
            return
        }
        guard let httpResponse = response as? HTTPURLResponse,
            (200...299).contains(httpResponse.statusCode) else {
            // self.handleServerError(response)
            print(response)
            return
        }
        let data = data
        print(data)
        }
        task.resume()
        return a * b
    }

}
    
