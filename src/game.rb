require_relative 'board'
require_relative 'display'

class Game

  def initialize(player1, player2)
    @board = Board.new
    @player1 = player1
    @player2 = player2
  end

  def play
    @current_player = @player1
    until over?
      @current_player.play_turn(@board)
      switch_player
    end
    switch_player
    puts "Game over! #{@current_player.name} has checkmate!"
  end

  private

  attr_reader :player1, :player2

  def over?
    @board.checkmate?(@current_player.color)
  end

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

end
