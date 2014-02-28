
class Weapon #subclass for each weapon, or just have 5 instances, #melanie
  #attributes: name, (what_it_beats, what_it_loses_to) or who_beats_who(all)
  #readers

  def initialize(name)
    @name = name
  end
  
  def self.create_weapon
    self if @name

  def who_beats_who(opponent)
  
    case name
    when 'rock'
      0
    when 'Spock'
      1
    when 'paper'
      2
    when 'lizard'
      3
    when 'scissors'
      4
    end
    # Game must generate `opponent`
    # placeholder
    opponent = 4
    difference = (name - opponent) % 5
    if [1, 2].include?(difference)
      'Player wins'
    elsif difference.zero?
      'Computer wins'
    else
      'tie'
    end
  end
end

