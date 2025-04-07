import SwiftUI

struct TextChessView: View {
    @State private var san = State_.san
    @State private var userInput = ""
    
    var body: some View {
        VStack(alignment: .leading,spacing: 20) {
            VStack(alignment: .leading) {
                Text(san)
            }
            .padding(.horizontal)
            
            VStack(alignment: .leading) {
                Text("Enter your move:")
                
                HStack {
                    TextField("e.g. e2e4 or Nf3", text: $userInput)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)
                    
                    Button(action: {
                        san = san + " " + userInput
                        State_.san = san
                        userInput = ""
                    }) {
                        Image(systemName: "arrow.up.circle.fill")
                            .font(.title)
                            .foregroundColor(.blue)
                    }
                }
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding()
        .onAppear {
            san = State_.san
        }
    }
}

#Preview {
    TextChessView().style()
} 
