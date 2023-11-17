import ComposableArchitecture
import SwiftUI

// MARK: - View

public struct HomeView: View {
  @ObservedObject
  private var viewStore: ViewStoreOf<Home>
  private let store: StoreOf<Home>

  public init(store: StoreOf<Home>) {
    self.viewStore = .init(store, observe: { $0 })
    self.store = store
  }

  public var body: some View {
    Text("Hello, Home!")
  }
}

#if DEBUG
// MARK: - Preview

#Preview {
  let store: StoreOf<Home> = .init(
    initialState: .init(),
    reducer: { Home() }
  )

  return HomeView(store: store)
}

#endif
