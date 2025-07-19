import Foundation

public protocol GreetingService {
    func greeting() -> String
}

public class DefaultGreetingService: GreetingService {
    public init() {}
    public func greeting() -> String {
        "Hello from DI!"
    }
}
