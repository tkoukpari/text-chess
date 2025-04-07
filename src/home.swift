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

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .style()
    }
} 
