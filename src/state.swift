import SwiftUI

struct State_ {
    @AppStorage("fen") static var fen = "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1"
    @AppStorage("san") static var san = "1."
    @AppStorage("color") static var color = "white"
    @AppStorage("stockfish_level") static var stockfish_level = 1
    @AppStorage("number_of_moves_before_you_can_view_the_board") static var number_of_moves_before_you_can_view_the_board = 2
} 