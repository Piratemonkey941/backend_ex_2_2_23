class CLI 
  def run 
    puts "Greetings"
    menu
  end

  def menu 
    user_input = nil 
    while user_input != 'exit' 
      puts "Pick a year."
      puts "2015, 2014, 2013, 2012, 2011, 2010"
      puts "if you want to stop, enter exit"
      user_input = gets.chomp
      Scraper.scrape_movies(user_input)
    end
  end
end
