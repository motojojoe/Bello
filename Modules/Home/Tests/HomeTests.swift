import XCTest
import Swinject
@testable import Home

/// Mock greeting service for testing purposes
final class MockGreetingService: GreetingService {
    func greeting() -> String { "Test Greeting" }
}

final class HomeTests: XCTestCase {
    func testGreeting() throws {
        let container = Container()
        container.register(GreetingService.self) { _ in MockGreetingService() }
        let viewModel = HomeViewModel(container: container)
        viewModel.loadGreeting()
        XCTAssertEqual(viewModel.message, "Test Greeting")
    }
}
