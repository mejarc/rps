class Game #jason
  #attributes: user weapon, computer weapon, the result
  #behaviors: user_choose_weapon, computer_choose_weapon, compute_result, resolve_tie, game_loop
end

class User #melanie
  #attributes: id (database-generated primary key), name (default is user's phone #)
  #behavior: add_up_total_score
  attr_accessor :id, :name

  def initialize(id = 1, name = 4155551212)
    @id = id
    @name = name
  end

  def add_up_score
    # needs to compute from Session?
  end

end

class Session #jordan
  #attributes: wins, losses, choices, user_id
  #behaviors: start a session, input, update, render
end

class Weapon #subclass for each weapon, or just have 5 instances, #melanie
  #attributes: name, (what_it_beats, what_it_loses_to) or who_beats_who(all)
  #readers
end


#additional Twilio classes, database classes

##
# Tests
melanie = User.new
p melanie.id == 1
p melanie.name == 4155551212
