class StockMarketSearch::Scraper
  
  def self.scrape_url(url)
    doc = Nokogiri::HTML (open(url))
    company_hash = {
      :name => doc.search("h1").text 
      :overview => doc.search("div.lh18").text
      :location => doc.search("span.fRight").text
      :website => doc.search("span.fRight a").first["href"]
      :price => doc.search("span.36276_0").text 
      :charts_url => doc.search("div.quotedetail fLeft a").first["href"]
    }
    company_hash
  end
  
end 