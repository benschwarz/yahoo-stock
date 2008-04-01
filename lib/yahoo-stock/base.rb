module Yahoo
  class Stock
    attr_reader :code
    
    def initialize(stock_code)
      @code = stock_code
    end
    
    def last_trade
      get_info.at(".yfnc_tabledata1").inner_text
    end
    
    private
    def get_info
      @get_info ||= Query.new(BASE_URI + @code).execute
    end
  end
end