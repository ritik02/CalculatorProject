require_relative "../lib/calculator/validitychecker"
require_relative "../lib/calculator/calculator_helper.rb"
require_relative "../lib/calculator/router"
require_relative "../lib/calculator/parser"
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

    it "neg method should negate successfully" do
      
      result=object.neg
      expect(result).to eq(-6.0)
    end

    it "abs method should absolute successfully" do
      
      result=object.abs
      expect(result).to eq(6.0)
    end

    it "sqr method should square successfully" do
      
      result=object.sqr
      expect(result).to eq(36.0)
    end

    it "sqrt method should compute square_root successfully" do
      
      result=object.sqrt
      expect(result).to eq(6.0)
    end

    it "cube method should compute cube successfully" do
      
      result=object.cube
      expect(result).to eq(216.0)
    end

     it "cubert method should compute cube_root successfully" do
      
      result=object.cubert
      expect(result).to eq(6.0)
    end

    

    
    
    
    it "cancel method should reset  successfully" do
      
      result=object.cancel
      expect(result).to eq(0.0)
    end

   

    it "divide method should not divide when dividend is 0" do
      result=object.divide 0
      expect(result).to eql("Division not performed , enter another number other than zero")
    end
  end
  
end

RSpec.describe Parser do
  object=nil
  context "When checking for proper parsing of command string" do

    it "parser object should exist" do
      object=Parser.new
      expect(object).not_to be_nil
    end

    it "should return no error when input is valid" do
      input="add 3.4"
      error,command_array=object.parse(input)
      expect(error).to eql ('')
    end

    it "should return proper error message when input is invalid" do
      input="subtract abc"
      input1="abc mul"
      input2="multiply"
      input3="divide 12 abc"
      error1,command_array1=object.parse(input1)
      error2,command_array2=object.parse(input2)
      error3,command_array3=object.parse(input3)
      error,command_array=object.parse(input)
      expect(error).to eql ("Invalid Operands")
      expect(error1).to eql ("Invalid Command")
      expect(error2).to eql ("Invalid Command Syntax , No Arguments")
      expect(error3).to eql ("Invalid Command Length")
    end

    it "should return properly splitted arguments" do
      input ="multiply 12"
      error,command_array=object.parse(input)
      size=command_array.length
      expect(size).to eql (2)
      expect(command_array[0]).to eql "multiply"
      expect(command_array[1]).to eql 12.0
    end
  end
end


RSpec.describe Router do
  object=nil
  calculatorobject=Calculator.new
  context "When checking for proper routing of parsed commands" do

    it "router object should exist" do
      object=Router.new
      expect(object).not_to be_nil
    end

    it "should route add command properly" do
      command_array=['add',4]
      result=object.route(command_array,calculatorobject)
      expect(result).to eql 4.0
    end

    

    it "should route subtract command properly" do
      command_array=['subtract',2]
      result=object.route(command_array,calculatorobject)
      expect(result).to eql 2.0
    end
    
    it "should route exit command properly" do
      command_array=['exit']
      result=object.route(command_array,calculatorobject)
      expect(result).to eql "Program Terminated"
    end

    it "should route multiply command properly" do
      command_array=['multiply',2]
      result=object.route(command_array,calculatorobject)
      expect(result).to eql 4.0
    end

    it "should route divide command properly" do
      command_array=['divide',2]
      result=object.route(command_array,calculatorobject)
      expect(result).to eql 2.0
    end

    it "should route neg command properly" do
      command_array=['neg']
      result=object.route(command_array,calculatorobject)
      expect(result).to eql -2.0
     end

    it "should route abs command properly" do
      command_array=['abs']
      result=object.route(command_array,calculatorobject)
      expect(result).to eql 2.0
    end

    it "should route sqr command properly" do
      command_array=['sqr']
      result=object.route(command_array,calculatorobject)
      expect(result).to eql 4.0
    end

    it "should route cube command properly" do
      command_array=['cube']
      result=object.route(command_array,calculatorobject)
      expect(result).to eql 64.0
    end

    it "should route sqrt command properly" do
      command_array=['sqrt']
      result=object.route(command_array,calculatorobject)
      expect(result).to eql 8.0
    end

    it "should route cubert command properly" do
      command_array=['cubert']
      result=object.route(command_array,calculatorobject)
      expect(result).to eql 2.0
    end
    
    it "should route cancel command properly" do
      command_array=['cancel']
      result=object.route(command_array,calculatorobject)
      expect(result).to eql 0.0
     end
    
  end
end
      






