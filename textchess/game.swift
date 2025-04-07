import SwiftUI

struct New_game: View {
    @State private var color = State_.color
    @State private var stockfish_level = State_.stockfish_level
    @State private var number_of_moves_before_you_can_view_the_board = State_.number_of_moves_before_you_can_view_the_board

    var body: some View {
        VStack(spacing: 20) {
            VStack(alignment: .leading, spacing: 10) {
                Text("Color")
                
                HStack(spacing: 0) {
                    Button(action: { 
                        State_.color = "white"
                        color = "white"
                    }) {
                        Text("White")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(color == "white" ? Color.blue : Color.gray.opacity(0.1))
                            .foregroundColor(color == "white" ? .white : .primary)
                    }
                    
                    Button(action: { 
                        State_.color = "black"
                        color = "black"
                    }) {
                        Text("Black")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(color == "black" ? Color.blue : Color.gray.opacity(0.1))
                            .foregroundColor(color == "black" ? .white : .primary)
                    }
                }
            }
            .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Stockfish level: \(stockfish_level)")
                
                Slider(value: Binding(
                    get: { Double(stockfish_level) },
                    set: { 
                        stockfish_level = Int($0)
                        State_.stockfish_level = Int($0)
                    }
                ), in: 1...10, step: 1)
                .padding()
                .background(Color.gray.opacity(0.1))
            }
            .padding(.horizontal)

            VStack(alignment: .leading, spacing: 10) {
                Text("Number of moves before you can view the board: \(number_of_moves_before_you_can_view_the_board)")
                
                Slider(value: Binding(
                    get: { Double(number_of_moves_before_you_can_view_the_board) },
                    set: { 
                        number_of_moves_before_you_can_view_the_board = Int($0)
                        State_.number_of_moves_before_you_can_view_the_board = Int($0)
                    }
                ), in: 2...20, step: 2)
                .padding()
                .background(Color.gray.opacity(0.1))
            }
            .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 10) {
                Button(action: {
                    print("Play - Color: \(color), Level: \(stockfish_level)")
                }) {
                    Text("Play")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                }
            }
            .padding(.horizontal)
        }
        .padding()
        .onAppear {
            color = State_.color
            stockfish_level = State_.stockfish_level
            number_of_moves_before_you_can_view_the_board = State_.number_of_moves_before_you_can_view_the_board
        }
    }
}

#Preview {
    New_game().style()
}
