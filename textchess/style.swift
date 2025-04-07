import SwiftUI

extension View {
    func style() -> some View {
        self.environment(\.font, .body.monospaced())
    }
} 
