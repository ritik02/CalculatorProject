
RSpec.describe Calculator do
  
  it "adds two numbers successfully" do
    object=Calculator.new
    expect(object.add 5.2).to eq(5.3)
  end
end
