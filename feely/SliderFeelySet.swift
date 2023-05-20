//
//  ButtonPrincipalView.swift
//  feely
//
//  Created by Jean Karel on 20/05/23.
//

import SwiftUI

struct SliderFeelySet: View {
    var category: String
    
    @State private var sliderValue: Double = 1.0
    
    var body: some View {
        Rectangle()
            .fill(Color("myBlue"))
            .frame(width: 350, height: 100)
            .cornerRadius(20)
            .overlay {
                HStack {
                    Slider(value: $sliderValue, in: 1...100)
                        .padding()
                        .tint(Color("myGreen"))
                    Text("\(Int(sliderValue))% \(category)")
                        .foregroundColor(.white)
                        .font(.title2)
                        .bold()
                        .padding()
                    Spacer()
                }
                .frame(maxHeight: .infinity)
                .padding(.horizontal, 20)
            }
    }
}

struct ButtonPrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        SliderFeelySet(category: "Attention")
    }
}
