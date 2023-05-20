
import SwiftUI

struct FeelyPrincipalView: View {
    var body: some View {
        VStack {
            CardFeelyUser()
                .frame(height: 350)
                .shadow(radius: 5)
                .cornerRadius(20)
                .padding(.all)

            SliderFeelySet(category: "Attention")
            
            SliderFeelySet(category: "Mood")
            
            SliderFeelySet(category: "Energy")
        
        }
        .frame(maxHeight: .infinity)
        .background(Color("myGreen"))
    }
}



struct FeelyPrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        FeelyPrincipalView()
    }
}
