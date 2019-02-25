class StockMarketSearch::Company
  
  
  attr_accessor :name, :overview, :price_update, :price, :mktwatch_url
  
  def initialize(url)
    company_hash = StockMarketSearch::Scraper.scrape_url(url)
    company_hash.each do |k,v|
     self.send("#{k}=", v)
      
    end
  end
 
  
  def self.new_by_url(url)
    self.new(url).tap do |company|
      
    end
  end

  
  
end