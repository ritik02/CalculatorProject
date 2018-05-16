class Calculator
   @number
   def initialize (number=0.0)
      @number=number
   end
   def add (number2=0.0)
      @number=@number+number2
      p @number
      
   end
   def subtract (number2=0.0)
      @number=@number-number2
      p @number
   end
   def multiply (number2=1.0)
      @number=@number*number2
      p @number
   end
   def divide (number2=1.0)
      if number2.zero?
      puts "Division not performed , enter another number other than zero"
      return
      end
      @number=@number/number2
      p @number

   end
   def cancel
      @number=0.0
      p @number
   end
end
