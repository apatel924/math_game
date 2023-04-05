class Turn
  attr_reader :correct

  def initialize(player)
    @player = player
    @question = Question.new
    @correct = false
  end

  def play
    puts "#{player_name}: #{@question.text}"
    answer = gets.chomp.to_i
    @correct = answer == @question.answer
    display_result
  end

  def correct?
    @correct
  end

  private

  def display_result
    if correct?
      puts "#{player_name}: Correct!"
    else
      puts "#{player_name}: Incorrect!"
      puts "#{player_name} loses a life."
    end
  end

  def player_name
    @player.name
  end
end
