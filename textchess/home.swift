import SwiftUI

struct Home: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Text Chess")

            Text("""
            A small, open source chess app designed to make you actually better \
            at chess.
            """)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    Home().style()
}
