import Profile
import SwiftUI

@main
struct BelloApp: App {
  var body: some Scene {
    WindowGroup {
      TabView {
        NavigationStack {
          ProfileView()
        }
        .tabItem {
          Label("Profile", systemImage: "person.circle")
        }

        NavigationStack {
          Text("Home")
        }
        .tabItem {
          Label("Home", systemImage: "house")
        }

        NavigationStack {
          Text("Settings")
        }
        .tabItem {
          Label("Settings", systemImage: "gear")
        }
      }
    }
  }
}
