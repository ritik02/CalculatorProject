class ValidityChecker
 
  def self.checkvalidity command_array
    
    noargumentmethod_names = ["abs","neg","sqr","sqrt","cube","cubert","exit","cancel"]
    singleargumentmethod_names = ["add","subtract","multiply","divide"]
    
    error_hash={
                0 => '',
                1 => "Invalid Command" ,
                2 => "Invalid Operands",
                3 => "Invalid Command Length",
                4 =>"Invalid Command Syntax , No Arguments"
               }
    
    if command_array.length == 1
      if  noargumentmethod_names.include?(command_array[0])
        flag = 0
      elsif !(noargumentmethod_names.include?(command_array[0])) && (singleargumentmethod_names.include?(command_array[0]))
        flag = 4
      else flag = 1
      end
      
    elsif command_array.length == 2
      if  singleargumentmethod_names.include?(command_array[0])
        if (command_array[1].to_i.to_s == command_array[1] || command_array[1].to_f.to_s == command_array[1])
          command_array[1]=command_array[1].to_f
          flag = 0
        else
          flag = 2
        end
      else
        flag = 1
      end
      
     else
       flag = 3
     end
    
     return error_hash[flag]
    
  end
  
end
