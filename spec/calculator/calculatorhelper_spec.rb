
RSpec.describe CalculatorHelper do
  context "When checking for basic functionality of Calculator\n" do

    it "check if calculator should exist" do
      object = CalculatorHelper.new
      expect(object).not_to be_nil
    end
    
  
    it "add method should add successfully" do
      object = CalculatorHelper.new
      result = object.add 5.2
      expect(result).to eq(5.2)
    end

    it "subtract method should subtract successfully" do
      object = CalculatorHelper.new
      result = object.subtract 1.2
      expect(result).to eq(-1.2)
    end

    it  "multiply method should multiply successfully" do
      object = CalculatorHelper.new 2
      result = object.multiply 3
      expect(result).to eq(6.0)
    end

    it "divide method should divide successfully" do
      object = CalculatorHelper.new 12
      result = object.divide 2
      expect(result).to eq(6.0)
    end

    it "neg method should negate successfully" do
      object = CalculatorHelper.new -3
      result = object.neg
      expect(result).to eq(3.0)
    end

    it "abs method should absolute successfully" do
      object = CalculatorHelper.new -2
      result = object.abs
      expect(result).to eq(2.0)
    end

    it "sqr method should square successfully" do
      object = CalculatorHelper.new 6
      result = object.sqr
      expect(result).to eq(36.0)
    end

    it "sqrt method should compute square_root successfully" do
      object = CalculatorHelper.new 9
      result = object.sqrt
      expect(result).to eq(3.0)
    end

    it "cube method should compute cube successfully" do
      object = CalculatorHelper.new 6
      result = object.cube
      expect(result).to eq(216.0)
    end

     it "cubert method should compute cube_root successfully" do
      object = CalculatorHelper.new 64
      result = object.cubert
      expect(result).to eq(4.0)
    end

    
     it "cancel method should reset  successfully" do
      object = CalculatorHelper.new 2
      result = object.cancel
      expect(result).to eq(0.0)
    end

   
     it "divide method should not divide when dividend is 0" do
      object = CalculatorHelper.new 2
      result = object.divide 0
      expect(result).to eql("Division not performed , enter another number other than zero")
    end
  end
  
end




