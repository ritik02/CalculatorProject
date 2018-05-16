require_relative "../lib/calculator/calculator_helper.rb"
RSpec.describe Calculator do
  context "When checking for basic functionality of Calculator\n" do

    object=nil
    it "checks if calculator exists" do
      object=Calculator.new
      expect(object).not_to be_nil
    end
    
  
    it "add method should add  successfully" do
      
      result=object.add 5.2
      expect(result).to eq(5.2)
    end

    it "subtract method should subtract successfully" do
      
      result=object.subtract 1.2
      expect(result).to eq(4.0)
    end

    it  "multiply method should multiply successfully" do
      
      result=object.multiply 3
      expect(result).to eq(12.0)
    end

    it "divide method should divide successfully" do
      
      result=object.divide 2
      expect(result).to eq(6.0)
    end

  end

  
  
end
