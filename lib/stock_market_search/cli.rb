class StockMarketSearch::CLI 
  
  def call 
    puts "Welcome to Stock Market Search!"
    puts "Please enter a ticker symbol (e.g. MCD)"
    input = gets.strip
    
  end 
  
  def input_url(input)
    if input.match(/[a-zA-Z]/)
    url = "https://www.etrade.wallst.com/v1/stocks/snapshot/snapshot.asp?symbol=#{input}"
  else 
  puts "The system doesn't recognize that, please enter a ticker symbol (e.g. MCD)"
end
end 
  
  
end