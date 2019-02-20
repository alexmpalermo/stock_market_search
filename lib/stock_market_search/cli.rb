class StockMarketSearch::CLI 
  
  def call 
    welcome 
    input = gets.strip
    url = input_url(input)
    new_company = StockMarketSearch::Company.new_by_url(url)
    puts "You have chosen: APPLE INC"
    #pick
    choose 
    
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
   puts "You have chosen: #{new_company.name}"   
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
      puts ""
      puts "The current market price is "     #StockMarketSearch::Company.price
      puts ""
      choose
    elsif input == "2"
      puts "Overview: #{new_company.overview}"
      puts "Website: "      #StockMarketSearch::Company.website
      choose
    elsif input == "3"
      puts "Charts link: "     #StockMarketSearch::Company.etrade_url
      choose
    elsif input == "4"
    puts "Goodbye"
  else 
    puts "Invalid number. Please choose a number 1-4."
    choose
  end 
end 
    
  
end