import Combine
import Core

class ProfileViewModel: ObservableObject {
  @Published var user: User?

  let getProfileUseCase: GetProfileUseCase

  init(getProfileUseCase: GetProfileUseCase) {
    self.getProfileUseCase = getProfileUseCase
  }

  func getUser() {
    user = getProfileUseCase.execute()
  }
}
