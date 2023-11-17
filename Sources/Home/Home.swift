import ComposableArchitecture
import Dependencies

public struct Home: Reducer {
  public init() {}

  public var body: some Reducer<State, Action> {
    BindingReducer()
    Reduce<State, Action> { state, action in
      switch action {
      case .onAppear:
        return .none

      case .binding:
        return .none
      }
    }
  }
}
