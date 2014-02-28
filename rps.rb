class Game
  #attributes: user weapon, computer weapon, the result
  #behaviors: user_choose_weapon, computer_choose_weapon, compute_result, resolve_tie, game_loop
end

class User
  #attributes: id
  #behavior: add_up_total_score
end

class Session
  #attributes: wins, losses, choices, user_id
  #behaviors: start a session, input, update, render
end

class Weapon #subclass for each weapon, or just have 5 instances
  #attributes: name, (what_it_beats, what_it_loses_to) or who_beats_who(all)
  #readers
end


#additional Twilio classes, database classes
