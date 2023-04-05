class Player
  attr_reader :name
  attr_accessor :score, :lives

  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def dead?
    @lives == 0
  end
end
