import Foundation
import Combine
import ComposableArchitecture

struct Feely: ReducerProtocol {
    
    struct State: Equatable {
        @BindingState var attentionInput: Double = 1.0
        @BindingState var moodInput: Double = 1.0
        @BindingState var energyInput: Double = 1.0
    }
    
    enum Action: BindableAction {
        case started
        case binding(BindingAction<State>)
        case userConfirmFeelys
    }
    
    var body: some ReducerProtocol<State, Action> {
        Reduce { state, action in
            switch action {
            case .started:
                return .none
            case .binding:
                return .none
            case .userConfirmFeelys:
                return .none
            }
        }
        
        BindingReducer()
    }
}
