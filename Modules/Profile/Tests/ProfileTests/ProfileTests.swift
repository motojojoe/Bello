@testable import Profile
import Testing

@Suite
struct ProfileTests {
  @Test("Add numbers", .tags(.unitTests))
  func example() async throws {
    #expect(2 + 2 == 4)
  }
}

extension Tag {
  @Tag static var unitTests: Self
}
