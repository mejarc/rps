require_relative './user.rb'
require_relative './weapon.rb'
#require_relative './tests.rb'

class Session #jordan
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    # @player1_score = 0
    # @player2_score = 0
  end

  def start_game_loop(game_count)
    game_count.times do |count|
      game = Game.new(@player1, @player2)
      game.play
      #p game.winner.name
    end
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
    #logic
    puts "Enter weapon choice"
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
    elsif [3,4].include?(difference)
      @winner = @player2

    end

    puts "Player 1 chose #{@player1.weapon.name}"
    puts "Player 2 chose #{@player2.weapon.name}"

    if @winner == @player1
      puts "Player 1 wins"
    elsif @winner == @player2
      puts "Player 2 wins"
    else
      puts "Something weird"
    end
  end

  # def resolve_tie
  #   play
  # end

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
