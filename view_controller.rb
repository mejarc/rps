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


end

Controller.play!