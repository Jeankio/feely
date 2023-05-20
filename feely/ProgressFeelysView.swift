import SwiftUI

struct ProgressFeelysView: View {
    var progressValue: Double
    
    var body: some View {
        VStack {
            ProgressView(value: progressValue)
                .progressViewStyle(FeelysProgressViewStyle(text: ""))
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

