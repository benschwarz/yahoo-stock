require(File.join(File.dirname(__FILE__), '..', 'lib', 'yahoo-stock'))

describe Yahoo::Stock::Query, "class" do
  before :all do
    @query = Yahoo::Stock::Query.new("http://yahoo.com/")
  end
  
  it "should create an instance of its self" do
    @query.should(be_an_instance_of(Yahoo::Stock::Query))
  end
  
  it "should respond to uri" do
    @query.should(respond_to(:uri))
  end
  
  it "should query a url and return a hpricot document" do
    @query.execute.should(be_an_instance_of(Hpricot::Doc))
  end
end