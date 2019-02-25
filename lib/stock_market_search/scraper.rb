class StockMarketSearch::Scraper
  
  def self.scrape_url(url)
    doc = Nokogiri::HTML(open(url))
    #binding.pry 
    company_hash = {
      :name => doc.search("h1.company__name").text, 
      #:overview => doc.search("p.description__text").text,
      #:location => doc.search("span.fRight").text,
      #:website => doc.search("span.fRight a").first["href"],
      :price => doc.search("h3.intraday__price bg-quote").text,
      :etrade_url => url
    }
    company_hash
  end
  
 
  
end 