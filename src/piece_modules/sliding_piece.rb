require 'set'
module SlidingPiece

  DIAGONALS = [[-1, -1], [1, 1], [-1, 1], [1, -1]].freeze
  LATERALS = [[-1, 0], [1, 0], [0, 1], [0, -1]].freeze

  def moves
    moves = Set.new
    diffs.each do |diff|
      pos = increment_pos(position, diff)
      while valid_pos?(pos)
        moves << pos
        break if board.is_occupied?(pos)
        pos = increment_pos(pos, diff)
      end
    end
    moves
  end
  
end
