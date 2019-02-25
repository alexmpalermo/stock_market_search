class StockMarketSearch::Scraper
  
  def self.scrape_url(url)
    doc = Nokogiri::HTML(open(url))
    #binding.pry 
    company_hash = {
      :name => doc.search("h1.company__name").text, 
      :overview => overview = doc.search('p.description__text> text()').text.strip,
      :price_update => doc.search("div.intraday__timestamp").text,
      :price => doc.search("h3.intraday__price bg-quote").text,
      :mktwatch_url => url
    }
    company_hash
  end
  
 
  
end 