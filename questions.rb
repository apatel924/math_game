class Question
  attr_reader :text, :answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @operator = ['+', '-', '*', '/'].sample
    @text = "What is #{@num1} #{@operator} #{@num2}?"
    @answer = calculate_answer
  end

  private

  def calculate_answer
    case @operator
    when '+'
      @num1 + @num2
    when '-'
      @num1 - @num2
    when '*'
      @num1 * @num2
    when '/'
      @num1 / @num2
    end
  end
end
