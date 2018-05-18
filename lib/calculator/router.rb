require_relative "calculator_helper" 

class Router
  
  def route command_array,calculatorobject
  case command_array[0]

       when 'exit'
         return "Program Terminated"
       when 'cancel'
         calculatorobject.cancel
       when 'add'
         calculatorobject.add command_array[1]
       when 'subtract'
         calculatorobject.subtract command_array[1]
       when 'divide'
         calculatorobject.divide command_array[1]
       when 'multiply'
         calculatorobject.multiply command_array[1]
       when 'abs'
         calculatorobject.abs
       when 'neg'
         calculatorobject.neg
       when 'sqr'
         calculatorobject.sqr
       when 'sqrt'
         calculatorobject.sqrt
       when 'cube'
         calculatorobject.cube
       when 'cubert'
         calculatorobject.cubert
    end
    
  end
end
