
##
# Tests
session = Session.new
melanie = User.new
session.add_user(melanie) # @users << melanie

score = session.report_score # gets @score from Session
melanie.score = score

p melanie.id == 1
p melanie.name == 4155551212

weapon = Weapon.new(rand(0..4))
# cf. http://en.wikipedia.org/wiki/File:Normal_form_matrix_of_Rock-paper-scissors-lizard-Spock.jpg
spock = Weapon.new('spock')
p spock.name_to_number
p spock.who_beats_who == 'Player wins'
