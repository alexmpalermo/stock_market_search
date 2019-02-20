class StockMarketSearch::Company
  
  
  attr_accessor :name, :overview, :website, :price, :charts_url
  
  def new_by_url(url)
    self.new(url).tap do |company|
     company_hash = StockMarketSearch::Scraper.scrape_url(url)
     company_hash.each do |k,v|
      self.send("#{k}=", v)
    end 
  end
end 
  
  
end