class Calculator
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def add
    @num1 + @num2
  end

  def subtract
    @num1 - @num2
  end

  def multiply
    @num1 * @num2
  end

  def divide
    @num1.to_f / @num2.to_f
  end

  def modu
    x = (@num1 % @num2)
  end

end

calc1 = Calculator.new(20, 11)
calc2 = Calculator.new(231213, 3423434234)
puts calc1.add
puts calc2.subtract
puts calc2.multiply
puts calc2.divide
puts calc2.modu
