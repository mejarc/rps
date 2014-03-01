require_relative './rps-lizard-spock.rb'

class Controller
  def self.play!
    create_players
    Session.new(@player1, @player2).start_game_loop(get_game_length)
  end

  def self.create_players
    View.get_username
    @player1 = User.new(gets.chomp)
    @player2 = User.new
  end

  def self.get_game_length
    View.get_game_length
    return gets.chomp.to_i
  end

end


class View
  def self.get_username
    puts "Please enter a username"
  end

  def self.get_game_length
    puts "How many games would you like to play?"
  end

  def self.get_weapon_choice
    puts "Choose a weapon: rock, paper, scissors, lizard, spock"
  end

  def self.end_message
    puts "Thanks for playing!"
  end

  def self.show_results(player1, player2)
    puts "#{player1.name.capitalize} chose #{player1.weapon.name}"
    puts "#{player2.name.capitalize} chose #{player2.weapon.name}"

    if @winner == @player1
      puts "#{player1.name.capitalize} wins"
    elsif @winner == @player2
      puts "#{player2.name.capitalize} wins"
    else
      puts "Something weird happened"
    end

  end


end

Controller.play!