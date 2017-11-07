require_relative 'piece'
require_relative '../piece_modules/sliding_piece'
require_relative '../board'

class Bishop < Piece
  include SlidingPiece

  def inspect
    '♝'
  end

  def dirs
    DIAGNALS
  end

end
