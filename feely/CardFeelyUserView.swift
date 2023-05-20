//
//  ContentView.swift
//  feely
//
//  Created by Jean Karel on 19/05/23.
//

import SwiftUI

struct CardFeelyUser: View {
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
            VStack(alignment: .leading) {
                Text("Attention:")
                    .bold()
                ProgressFeelysView(progressValue: 0.70)
                    .padding(.bottom, 12)
                Text("Mood:")
                    .bold()
                ProgressFeelysView(progressValue: 0.30)
                    .padding(.bottom, 12)
                Text("Energy:")
                    .bold()
                ProgressFeelysView(progressValue: 1.0)
                
                Spacer()
            }
            .padding()
            .foregroundColor(.white)
        }
        .padding()
        .background(Color("myBlue"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardFeelyUser()
    }
}
