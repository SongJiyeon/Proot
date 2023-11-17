import ComposableArchitecture
import SwiftUI

// MARK: - View

public struct AppView: View {
  @ObservedObject
  private var viewStore: ViewStoreOf<App>
  private let store: StoreOf<App>

  public init(store: StoreOf<App>) {
    self.viewStore = .init(store, observe: { $0 })
    self.store = store
  }

  public var body: some View {
    List {
      Text("Hello, App!")
    }
    .task {
      await viewStore
        .send(.onAppear)
        .finish()
    }
  }
}

#if DEBUG
// MARK: - Preview

#Preview {
  let store: StoreOf<App> = .init(
    initialState: .init(),
    reducer: { App() }
  )

  return AppView(store: store)
}

#endif
