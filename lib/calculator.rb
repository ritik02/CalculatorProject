require_relative "calculator/version"
require_relative "calculator/calculator_helper"
require_relative "calculator/validitychecker"

object1=Calculator.new
   
loop do
    operation=gets.chomp
    values=operation.split(" ")
    case values[0]
       when 'exit'
         puts "Program Terminated"
         flag=1
       when 'cancel'
         object1.cancel
       when 'add'
          if Validity.checkvalidity? values
             object1.add values[1].to_f
          else object1.add
          end
       when 'subtract'
           if Validity.checkvalidity? values
               object1.subtract values[1].to_f
           else object1.subtract
           end
       when 'divide'
          if Validity.checkvalidity? values
               object1.divide values[1].to_f
           else object1.divide
           end
       when 'multiply'
          if Validity.checkvalidity? values
             object1.multiply values[1].to_f
          else object1.multiply
          end
      else
       puts "Invalid Command , enter a valid one"
    end
    if flag == 1
       break
    end

end

