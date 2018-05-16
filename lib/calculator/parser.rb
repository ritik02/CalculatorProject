require_relative "validitychecker"

class Parser
   
    
  def parse command_string

    command_array=command_string.split(" ")
    status=Validity.checkvalidity command_array
    return status,command_array
    
  end
end

      
    
