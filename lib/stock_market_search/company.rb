class StockMarketSearch::Company
  
  
  attr_accessor :name, :overview, :location, :website, :price, :charts_url
  
  def initialize
    
  end 
  
  def new_by_url(url)
    self.new(url).tap do |company|
     company_hash = StockMarketSearch::Scraper.scrape_url(url)
     company_hash.each do |k,v|
      self.send("#{k}=", v)
    end 
  end
end 
  
  
end