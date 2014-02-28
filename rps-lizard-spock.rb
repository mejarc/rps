class Game #jason
  #attributes: user weapon, computer weapon, the result
  #behaviors: user_choose_weapon, computer_choose_weapon, compute_result, resolve_tie, game_loop
end

class User #melanie
  #attributes: id
  #behavior: add_up_total_score
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
