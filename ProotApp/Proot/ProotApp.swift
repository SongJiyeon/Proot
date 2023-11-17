import App
import SwiftUI

@main
struct ProotApp: SwiftUI.App {
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
