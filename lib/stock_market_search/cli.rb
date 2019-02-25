class StockMarketSearch::CLI 
  
  def call 
    welcome 
    input = gets.strip
    url = input_url(input)
    new_company = StockMarketSearch::Company.new_by_url(url)
    puts "You have chosen: #{new_company.name}"
    choose(new_company) 
    
  end

    def welcome 
    puts "Welcome to Stock Market Search!"
    puts "Please enter a ticker symbol (e.g. MCD)"
  end 
  
  def input_url(input)
    url = "https://www.marketwatch.com/investing/stock/#{input}" if input.match(/[a-zA-Z]/)
   url 
 end 

  def choices
    puts "What would you like to do? Please choose a number 1-4."
    puts "1. View current market price"
    puts "2. Company overview"
    puts "3. View charts/buy or sell shares on Etrade"
    puts "4. Exit"
  end 
  
  def choose(new_company)
    choices 
    input= gets.strip
    if input == "1"
      puts ""
      puts "The current market price is $#{new_company.price}."
      puts "#{new_company.price_update}"
      choose(new_company)
    elsif input == "2"
      puts ""
      puts "Overview: #{new_company.overview}"
      puts ""
      choose(new_company)
    elsif input == "3"
      puts ""
      puts "Charts link: #{new_company.charts_url}"  
      puts ""
      choose(new_company)
    elsif input == "4"
    puts ""
    puts "Goodbye"
    puts ""
  else 
    puts ""
    puts "Invalid number. Please choose a number 1-4."
    puts ""
    choose(new_company)
  end 
end 
    
  
end