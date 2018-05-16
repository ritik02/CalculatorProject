require_relative "calculator/version"
require_relative "calculator/parser"
require_relative "calculator/router"


parserobject=Parser.new
routerobject=Router.new
calculatorobject=Calculator.new

loop do
    command_string=gets.chomp
    error,command_array=parserobject.parse(command_string)
    #puts error,command_array
    if error==''
      result= routerobject.route(command_array,calculatorobject)
      puts result
      if result=='Program Terminated'
        break
      end
    else
      puts error
    end
end

