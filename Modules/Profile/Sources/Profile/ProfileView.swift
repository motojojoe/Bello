import Core
import SDWebImageSwiftUI
import SwiftUI

public struct ProfileView: View {
  public init() {}

  @StateObject var viewModel: ProfileViewModel = .init(getProfileUseCase: GetProfileUseCase())

  public var body: some View {
    VStack(spacing: 16) {
      if let user = viewModel.user {
        WebImage(url: URL(string: user.avatarURL))
          .resizable()
          .frame(width: 100, height: 100)
          .scaledToFit()
          .clipShape(.circle)

        Text("\(user.firstName) \(user.lastName)")
          .font(.title)
          .fontWeight(.bold)

        Text("\(user.position) (\(user.companyName))")
          .font(.subheadline)
          .foregroundColor(.gray)

        Divider()

        VStack(alignment: .leading, spacing: 8) {
          HStack {
            Image(systemName: "envelope")
            Text(user.email)
          }
          HStack {
            Image(systemName: "phone")
            Text(user.telephone)
          }
        }

        Spacer()
      } else {
        ProgressView("Loading...")
          .progressViewStyle(CircularProgressViewStyle())
      }
    }
    .padding()
    .navigationTitle("Profile")
    .onAppear {
      viewModel.getUser()
    }
  }
}

#Preview {
  NavigationStack {
    ProfileView()
  }
}
