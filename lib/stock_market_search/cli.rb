class StockMarketSearch::CLI 
  
  def call 
    puts "Welcome to Stock Market Search!"
    puts "Please enter a ticker symbol (e.g. MCD)"
    input = gets.strip
    
    company_hash = {
      :ticker => input 
    }
    
    url = "https://www.etrade.wallst.com/v1/stocks/snapshot/snapshot.asp?symbol=#{input}" if input.match(/[a-zA-Z]/)
    
    StockMarketSearch::Company.new_by_url(url)
    
    puts "You have chosen: "StockMarketSearch::Company.name
    
  choose until input == "4"
    
  end

    
  
  def input_url(input)
    if input.match(/[a-zA-Z]/)
    url = "https://www.etrade.wallst.com/v1/stocks/snapshot/snapshot.asp?symbol=#{input}"
  else 
  puts "The system doesn't recognize that, please enter a ticker symbol (e.g. MCD)"
  input = gets.strip
  
end
end 

  def choices
    puts "What would you like to do? Please choose a number 1-4."
    puts "1. View current market price"
    puts "2. Company overview"
    puts "3. View charts/buy or sell shares on Etrade"
    puts "4. Exit"
  end 
  
  def choose
    choices 
    input= gets.strip
    if input == "1"
      puts "The current market price is: "StockMarketSearch::Company.price
    elsif input == "2"
      puts "Overview: "StockMarketSearch::Company.overview 
      puts "Headquarters: "StockMarketSearch::Company.location
      puts "Website: "StockMarketSearch::Company.website
    elsif input == "3"
      puts "Charts link: "StockMarketSearch::Company.charts_url
    elsif input == "4"
  else 
    "Invalid number. Please choose a number 1-4."
  end 
end 
    
  
end