import XCTest
import Swinject
@testable import Home

final class HomeTests: XCTestCase {
    func testGreeting() throws {
        let container = Container()
        container.register(GreetingService.self) { _ in DefaultGreetingService() }
        let viewModel = HomeViewModel(container: container)
        viewModel.loadGreeting()
        XCTAssertEqual(viewModel.message, "Hello from DI!")
    }
}
