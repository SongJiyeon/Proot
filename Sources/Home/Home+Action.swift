import ComposableArchitecture

extension Home {
  public enum Action: Equatable, BindableAction {
    case onAppear
    case binding(BindingAction<Home.State>)
  }
}
