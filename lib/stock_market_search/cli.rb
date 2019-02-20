class StockMarketSearch::CLI 
  
  def call 
    welcome 
    input = gets.strip
    url = input_url(input)
    StockMarketSearch::Company.new_by_url(url)
    pick
    choose until input == "4"
    
  end

    def welcome 
    puts "Welcome to Stock Market Search!"
    puts "Please enter a ticker symbol (e.g. MCD)"
  end 
  
  def input_url(input)
   url = "https://www.etrade.wallst.com/v1/stocks/snapshot/snapshot.asp?symbol=#{input}" if input.match(/[a-zA-Z]/)
   url 
 end 
 
 def pick 
   puts "You have chosen: "StockMarketSearch::Company.name  
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
      puts "Website: "StockMarketSearch::Company.website
    elsif input == "3"
      puts "Charts link: "StockMarketSearch::Company.etrade_url
    elsif input == "4"
  else 
    "Invalid number. Please choose a number 1-4."
  end 
end 
    
  
end