import SwiftUI

struct ProgressFeelysView: View {
    var progressValue: Double
    
    var body: some View {
        VStack {
            ProgressView(value: progressValue)
                .progressViewStyle(FeelysProgressViewStyle(text: ""))
            
            switch progressValue {
            case ..<0.4:
                Text("Changos... 🥺")
                    .bold()
                    .font(.title3)
                    .foregroundColor(.red)
            case 0.5..<0.8:
                Text("Hmmm... 😐")
                    .bold()
                    .font(.title3)
                    .foregroundColor(.orange)
            default:
                Text("Great!.. 😁")
                    .bold()
                    .font(.title3)
                    .foregroundColor(.green)
            }
        }
    }
}

struct FeelysProgressViewStyle: ProgressViewStyle {
    var text: String
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color("myGreen"))
                .frame(height: 20.0)
            ZStack {
                ProgressView(configuration)
                    .tint(.white)
                    .frame(height: 12.0)
                    .padding(.horizontal)
                Text(text)
                    .foregroundColor(.white)
                    .padding(.leading, 8)
            }
        }
    }
}

