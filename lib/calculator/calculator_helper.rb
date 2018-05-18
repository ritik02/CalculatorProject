class CalculatorHelper
  def initialize (operand = 0.0)
    @number = operand.to_f
  end
  
  def add (operand)
    @number = @number + operand
  end
  
  def subtract (operand)
    @number = @number - operand
  end
  
  def multiply (operand)
    @number = @number * operand
  end
  
  def divide (operand)
    if operand.zero?
      return "Division not performed , enter another number other than zero"
    end
    @number = @number/operand
  end
  
  def abs
    @number = @number.abs
  end
  
  def neg
    @number = -@number
  end
  
  def sqr
    @number = @number * @number
  end
  
  def cube
    @number = @number**3
  end
  
  def cubert
    @number = Math.cbrt(@number)
  end
  
  def sqrt
    @number = Math.sqrt(@number)
  end
  
  def cancel
    @number = 0.0
  end
end
