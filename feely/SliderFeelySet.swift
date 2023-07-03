
import SwiftUI

struct SliderFeelySet: View {
    var category: String
    
    @Binding var sliderValue: Double
    
    var body: some View {
        Rectangle()
            .fill(Color("myBlue"))
            .frame(width: 350, height: 87)
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
        SliderFeelySet(category: "Attention", sliderValue: .constant(1.0))
    }
}
