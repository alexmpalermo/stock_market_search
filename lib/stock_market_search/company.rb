class StockMarketSearch::Company 
  attr_accessor :name, :overview, :location, :website, :ticker, :price, :charts_url
  
  def initialize(scraped_hash)
    scraped_hash.each do |k,v|
      self.send("#{k}=", v)
    end
  end 
  
end