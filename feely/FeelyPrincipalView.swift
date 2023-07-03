import ComposableArchitecture
import SwiftUI

struct FeelyPrincipalView: View {
    let store: StoreOf<Feely>
    
    struct InputViewState: Equatable {
        @BindingViewState var attentionInput: Double
        @BindingViewState var moodInput: Double
        @BindingViewState var energyInput: Double
        
        init(store: BindingViewStore<Feely.State>) {
            _attentionInput = store.$attentionInput
            _moodInput = store.$moodInput
            _energyInput = store.$energyInput
        }
    }
    
    var body: some View {
        VStack {
            CardFeelyUser()
                .frame(height: 430)
                .shadow(radius: 5)
                .cornerRadius(20)
                .padding(.all)
            WithViewStore(store, observe: InputViewState.init) { viewStore in
                SliderFeelySet(category: "Attention", sliderValue: viewStore.$attentionInput)
                SliderFeelySet(category: "Mood", sliderValue: viewStore.$moodInput)
                SliderFeelySet(category: "Energy", sliderValue: viewStore.$energyInput)
            }
            Button {
                store.send(.userConfirmFeelys)
            } label: {
                Text("Confirmar")
            }
            .foregroundColor(Color("myBlue"))

        }
        .frame(maxHeight: .infinity)
        .background(Color("myGreen"))
    }
}


struct FeelyPrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        FeelyPrincipalView(store: Store(initialState: Feely.State(), reducer: Feely()))
    }
}
