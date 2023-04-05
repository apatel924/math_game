class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def play_turn
    puts "----- NEW TURN -----"
    turn = Turn.new(@current_player)
    turn.play
    update_score(turn)
    switch_player
  end

  def game_over?
    @player1.dead? || @player2.dead?
  end

  def display_result
    puts "----- GAME OVER -----"
    puts "#{winner.name} wins with a score of #{winner.score}"
    puts "Good bye!"
  end

  private

  def update_score(turn)
    if turn.correct?
      @current_player.score += 1
    else
      @current_player.lose_life
    end
  end

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def winner
    @player1.dead? ? @player2 : @player1
  end
end
