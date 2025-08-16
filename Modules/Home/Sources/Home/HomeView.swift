import SwiftUI
import Swinject

public struct HomeView: View {
    let container: Container
    @StateObject var viewModel: HomeViewModel

    public init() {
        let container = Container()
        container.register(GreetingService.self) { _ in DefaultGreetingService() }
        self.container = container
        _viewModel = StateObject(wrappedValue: HomeViewModel(container: container))
    }

    public var body: some View {
        VStack(spacing: 16) {
            if viewModel.message.isEmpty {
                ProgressView("Loading...")
                    .onAppear { viewModel.loadGreeting() }
            } else {
                Text(viewModel.message)
                    .font(.headline)
            }
        }
        .navigationTitle("Home")
    }
}

#Preview {
    NavigationStack {
        HomeView()
    }
}
