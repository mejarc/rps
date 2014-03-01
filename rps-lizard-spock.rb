require_relative './user.rb'
require_relative './weapon.rb'


class Session #jordan
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player1_wins = 0
    @player2_wins = 0
  end

  def start_game_loop(game_count)
    game_count.times do |count|
      game = Game.new(@player1, @player2)
      winner = game.play
      if winner == @player1
        @player1_wins += 1
      else
        @player2_wins += 1
      end
    end
    options = {player1: @player1, player2: @player2, player1_wins: @player1_wins, player2_wins: @player2_wins}
    @player1.import_results(@player1_wins, @player2_wins)
    View.end_message(options)
  end
end

class Game #jason
  #attributes: user weapon, computer weapon, the result
  #behaviors: user_choose_weapon, computer_choose_weapon, compute_result, resolve_tie, game_loop
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def choose_weapon(player)
    View.get_weapon_choice
    arg = gets.chomp
    player.set_weapon(arg)
  end

  def choose_random_weapon(player)
    player.set_weapon(%w(rock paper scissors lizard spock).sample)
  end

  def compute_result

    difference = (@player1.weapon.index - @player2.weapon.index) % 5
    if [1, 2].include?(difference)
      @winner = @player1

    elsif [3, 4].include?(difference)
      @winner = @player2

    end

    View.show_game_result(@player1, @player2, @winner)
    return @winner
  end


  def result
  end

  def play
    begin
      choose_weapon(@player1)
      choose_random_weapon(@player2)
      puts "Tie" if @player1.weapon.index == @player2.weapon.index
    end while @player1.weapon.index == @player2.weapon.index
    compute_result
  end
end

#additional Twilio classes, database classes
