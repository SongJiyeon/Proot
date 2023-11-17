import App
import SwiftUI

@main
struct ProotApp: App {
  var body: some Scene {
    WindowGroup {
      AppView(
        store: .init(
          initialState: .init(),
          reducer: { App() }
        )
      )
    }
  }
}
