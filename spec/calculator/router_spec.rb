RSpec.describe Router do
  context "When checking for proper routing of parsed commands" do
    before(:each) do
      @routerobject = Router.new
      @calculatorobject = CalculatorHelper.new
    end
    
    it "router object should exist" do
      expect(@routerobject).not_to be_nil
    end

    it "should route add command properly" do
      command_array = ['add', 4]
      result = @routerobject.route(command_array,@calculatorobject)
      expect(result).to eql(4.0)
    end

    it "should route subtract command properly" do
      command_array = ['subtract', 2]
      result = @routerobject.route(command_array, @calculatorobject)
      expect(result).to eql(-2.0)
    end
    
    it "should route exit command properly" do
      command_array = ['exit']
      result = @routerobject.route(command_array, @calculatorobject)
      expect(result).to eql("Program Terminated")
    end

    it "should route multiply command properly" do
      calculatorobject = CalculatorHelper.new(2)
      command_array = ['multiply',4]
      result = @routerobject.route(command_array, calculatorobject)
      expect(result).to eql(8.0)
    end

    it "should route divide command properly" do
      calculatorobject = CalculatorHelper.new(4)
      command_array = ['divide', 2]
      result = @routerobject.route(command_array, calculatorobject)
      expect(result).to eql(2.0)
    end

    it "should route neg command properly" do
      calculatorobject = CalculatorHelper.new(2)
      command_array = ['neg']
      result = @routerobject.route(command_array, calculatorobject)
      expect(result).to eql(-2.0)
    end

    it "should route abs command properly" do
      calculatorobject = CalculatorHelper.new(-2.0)
      command_array = ['abs']
      result = @routerobject.route(command_array, calculatorobject)
      expect(result).to eql(2.0)
    end

    it "should route sqr command properly" do
      calculatorobject = CalculatorHelper.new(2)
      command_array = ['sqr']
      result = @routerobject.route(command_array, calculatorobject)
      expect(result).to eql(4.0)
    end

    it "should route cube command properly" do
      calculatorobject = CalculatorHelper.new(-4)
      command_array = ['cube']
      result = @routerobject.route(command_array, calculatorobject)
      expect(result).to eql(-64.0)
    end

    it "should route sqrt command properly" do
      calculatorobject = CalculatorHelper.new(64.0)
      command_array = ['sqrt']
      result = @routerobject.route(command_array, calculatorobject)
      expect(result).to eql(8.0)
    end

    it "should route cubert command properly" do
      calculatorobject = CalculatorHelper.new(8.0)
      command_array = ['cubert']
      result = @routerobject.route(command_array, calculatorobject)
      expect(result).to eql(2.0)
    end
    
    it "should route cancel command properly" do
      calculatorobject = CalculatorHelper.new(5)
      command_array = ['cancel']
      result = @routerobject.route(command_array, calculatorobject)
      expect(result).to eql(0.0)
    end
    
  end
end







