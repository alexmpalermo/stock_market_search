class StockMarketSearch::Company
  
  
  attr_accessor :name, :overview, :price_update, :price, :mktwatch_url
  @@all = []
  
  def initialize(url)
    company_hash = StockMarketSearch::Scraper.scrape_url(url)
    company_hash.each do |k,v|
     self.send("#{k}=", v)
     
    end
     @@all << self
  end
  
def self.all
  @@all
end 
  
  
end