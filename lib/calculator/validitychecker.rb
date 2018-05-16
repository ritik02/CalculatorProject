class Validity

  def self.checkvalidity? value
   return true if value.length==2 && (value[1].to_i.to_s==value[1] || value[1].to_f.to_s== value[1])
   return false
  end
  
end
