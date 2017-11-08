require_relative 'piece'
require_relative '../piece_modules/sliding_piece'
require_relative '../board'

class Rook < Piece
  include SlidingPiece
  include Castling

  def inspect
    '♜'
  end

  def diffs
    LATERALS
  end

end
