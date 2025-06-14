public struct User {
  public let firstName: String
  public let lastName: String
  public let companyName: String
  public let position: String
  public let email: String
  public let telephone: String
  public let avatarURL: String

  /// Public memberwise initializer so other modules can instantiate `User`.
  public init(
    firstName: String,
    lastName: String,
    companyName: String,
    position: String,
    email: String,
    telephone: String,
    avatarURL: String
  ) {
    self.firstName = firstName
    self.lastName = lastName
    self.companyName = companyName
    self.position = position
    self.email = email
    self.telephone = telephone
    self.avatarURL = avatarURL
  }
}

public struct GetProfileUseCase {
  public init() {}
  public func execute() -> User {
    User(
      firstName: "Jane",
      lastName: "Doe",
      companyName: "Bello",
      position: "iOS Developer",
      email: "jane@example.com",
      telephone: "+1 (123) 456-7890",
      avatarURL: "https://picsum.photos/id/1/200/300"
    )
  }
}
