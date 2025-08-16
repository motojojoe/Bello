import Foundation
import Combine
import Swinject

public class HomeViewModel: ObservableObject {
    @Published public var message: String = ""
    let greetingService: GreetingService

    public init(container: Resolver) {
        self.greetingService = container.resolve(GreetingService.self)!
    }

    public func loadGreeting() {
        message = greetingService.greeting()
    }
}
