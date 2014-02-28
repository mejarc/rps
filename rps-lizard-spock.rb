require_relative './user.rb'
require_relative './weapon.rb'
require_relative './tests.rb'

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
      p game.winner.name
    end
  end
end

class Game #jason
  #attributes: user weapon, computer weapon, the result
  #behaviors: user_choose_weapon, computer_choose_weapon, compute_result, resolve_tie, game_loop
end

#additional Twilio classes, database classes
