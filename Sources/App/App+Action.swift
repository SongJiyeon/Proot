import ComposableArchitecture

extension App {
  public enum Action: Equatable, BindableAction {
    case onAppear
    case binding(BindingAction<App.State>)
  }
}
