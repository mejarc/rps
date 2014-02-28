
class Weapon #subclass for each weapon, or just have 5 instances, #melanie
  #attributes: name, (what_it_beats, what_it_loses_to) or who_beats_who(all)
  #readers
  def initialize(name)
    @name = name
    @index = name_to_number(@name)
  end

  def name_to_number(name)
    case name
    when 'rock'
      return 0
    when 'spock'
      return 1
    when 'paper'
      return 2
    when 'lizard'
      return 3
    else
      return 4
    end
  end

# put in Game
  # def who_beats_who
  #   player_weapon = weapon.index
  #   # Game must generate `opponent`
  #   # placeholder
  #   opponent = 4
  #   difference = (player_weapon - opponent) % 5
  #   if [1, 2].include?(difference)
  #     'Player wins'
  #   elsif difference.zero?
  #     'Computer wins'
  #   else
  #     'tie'
  #   end
  # end
end


