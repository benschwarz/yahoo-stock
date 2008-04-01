require(File.join(File.dirname(__FILE__), '..', 'lib', 'yahoo-stock'))

describe Yahoo::Stock, "instance" do
  before do
    @stock = Yahoo::Stock.new('MGR.AX')
  end
  
  it "should return the stock when provided with a stock code" do
    @stock.should be_an_instance_of Yahoo::Stock
  end
  
  it "should expose the stock code that is in use" do
    @stock.code.should eql 'MGR.AX'
  end
  
  it "should have a last_trade" do
    @stock.should respond_to :last_trade
    puts @stock.last_trade
    @stock.last_trade.should be_an_instance_of String
  end
end