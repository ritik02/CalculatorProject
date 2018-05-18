RSpec.describe ValidityChecker do
  context "When checking for validation of command string\n" do
    
    it "should return proper error message when input is invalid" do
      
      input = ["subtract", "abc"]
      input1 = ["abc", "mul"]
      input2 = ["multiply"]
      input3 = ["divide", "12", "abc"]
      input4 = ["abc"]
      
      error = ValidityChecker.checkvalidity(input)
      error1 = ValidityChecker.checkvalidity(input1)
      error2 = ValidityChecker.checkvalidity(input2)
      error3 = ValidityChecker.checkvalidity(input3)
      error4 = ValidityChecker.checkvalidity(input4)
      
      expect(error).to eql("Invalid Operands")
      expect(error1).to eql("Invalid Command")
      expect(error2).to eql("Invalid Command Syntax , No Arguments")
      expect(error3).to eql("Invalid Command Length")
      expect(error4).to eql("Invalid Command")
    end

  end
end
