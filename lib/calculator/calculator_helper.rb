class Calculator
 
  def initialize (number=0.0)
      @number=number
   
  end
   def add (number2)
      @number=@number+number2
   end
   
   def subtract (number2)
      @number=@number-number2
   end
   
   def multiply (number2)
      @number=@number*number2
   end
   
   def divide (number2)
      if number2.zero?
      return "Division not performed , enter another number other than zero"
      
      end
      @number=@number/number2
   end
   
   def abs
      @number=@number.abs
   end
   
   def neg
     @number=-@number
     @number
   end
   
   def sqr
     @number=@number*@number
   end
   
   def cube
     @number=@number**3
   end
   
   def cubert
     @number=Math.cbrt(@number)
   end
   
   def sqrt
     @number=Math.sqrt(@number)
   end
     
   def cancel
      @number=0.0
   end
end
