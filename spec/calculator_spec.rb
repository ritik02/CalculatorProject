require_relative "../lib/calculator/validitychecker"
RSpec.describe Calculator do
  object=nil
  context "When checking for basic functionality of Calculator\n" do

    
    it "check if calculator should exist" do
      object=Calculator.new
      expect(object).not_to be_nil
    end
    
  
    it "add method should add successfully" do
      
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
    
    it "cancel method should reset  successfully" do
      
      result=object.cancel
      expect(result).to eq(0.0)
    end

   

  end

  context "When checking for corner cases of Calculator\n" do

    it "add and subtract method should not add/subtract when no arguments are passed" do
      result=object.add
      result1=object.subtract
      expect(result).to eq(0.0)
      expect(result1).to eq(0.0)
    end

    it "divide and multiply  method should not divide/multiply when no arguments are passed" do
      result=object.multiply
      result1=object.divide
      expect(result).to eq(0.0)
      expect(result1).to eq(0.0)
    end

    it "divide method should not divide when dividend is 0" do
      result=object.divide 0
      expect(result).to be_nil
    end
      
    
  end
  
end


RSpec.describe Validity do
  context "When checking for validity of arguments of Calculator\n" do

   
    it "string argument should not be valid" do
      value="add abco".split(" ")
      result=Validity.checkvalidity? value
      expect(result).to be false
    end

    it "more than one argument should not be valid" do
      value="multiply 12 abc".split(" ")
      result=Validity.checkvalidity? value
      expect(result).to be false
    end

    it "only integer or float argument should be valid" do
      value="subtract 2.3".split(" ")
      value1="divide 5".split(" ")
      result=Validity.checkvalidity? value
      result1=Validity.checkvalidity? value1
      expect(result).to be true
      expect(result1).to be true
    end
    
  end
end

