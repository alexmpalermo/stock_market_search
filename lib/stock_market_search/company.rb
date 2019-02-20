class StockMarketSearch::Company
  
  
  attr_accessor :name, :overview, :location, :website, :price, :charts_url
  
  def initialize(scraped_hash)
    scraped_hash.each do |k,v|
      self.send("#{k}=", v)
    end
  end 
  
  def new_by_url(url)
    self.new(url).tap do |company|
    end 
  end
  
end