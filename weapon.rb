
class Weapon #subclass for each weapon, or just have 5 instances, #melanie
  #attributes: name, (what_it_beats, what_it_loses_to) or who_beats_who(all)
  #readers
  attr_reader :index, :name
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

end


