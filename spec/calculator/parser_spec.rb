RSpec.describe Parser do
  
  context "When checking for proper parsing of command string" do

    it "parser object should exist" do
      object = Parser.new
      expect(object).not_to be_nil
    end

    it "should return no error when input is valid" do
      object = Parser.new
      input = "add 3.4"
      input1 = "cancel"
      error1,command_array1 = object.parse(input1)
      error,command_array = object.parse(input)
      expect(error).to eql ('')
      expect(error1).to eql ('')
    end

    it "should return properly splitted arguments" do
      object = Parser.new
      input = "multiply 12"
      error,command_array = object.parse(input)
      size = command_array.length
      expect(size).to eql (2)
      expect(command_array[0]).to eql "multiply"
      expect(command_array[1]).to eql 12.0
    end
    
  end
end
