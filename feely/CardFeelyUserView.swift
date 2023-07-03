//
//  ContentView.swift
//  feely
//
//  Created by Jean Karel on 19/05/23.
//
import ComposableArchitecture
import SwiftUI

struct CardFeelyUser: View {
    let store: StoreOf<Feely>
    
    struct FeelysViewState: Equatable {
        var attention: Double
        var mood: Double
        var energy: Double
        
        init(state: Feely.State) {
            self.attention = state.attentionInput
            self.mood = state.moodInput
            self.energy = state.energyInput
        }
    }
    
    var body: some View {
        VStack {
            Text("Hi! Yeyis 🙂")
                .font(.title2)
                .bold()
                .foregroundColor(.white)
                .padding()
            Text("You're feelys today:")
                .font(.title3)
                .bold()
                .foregroundColor(.white)
            Spacer()
            WithViewStore(store, observe: FeelysViewState.init) { viewStore in
                VStack(alignment: .leading) {
                    Text("Attention:")
                        .bold()
                    ProgressFeelysView(progressValue: viewStore.attention)
                        .padding(.bottom, 12)
                    Text("Mood:")
                        .bold()
                    ProgressFeelysView(progressValue: viewStore.mood)
                        .padding(.bottom, 12)
                    Text("Energy:")
                        .bold()
                    ProgressFeelysView(progressValue: viewStore.energy)
                    
                    Spacer()
                }
                .padding()
                .foregroundColor(.white)
            }
        }
        .padding()
        .background(Color("myBlue"))
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardFeelyUser()
//    }
//}
