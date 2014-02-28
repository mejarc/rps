
##
# Tests
# session = Session.new
melanie = User.new
p melanie.id == 1
p melanie.name == 4155551212

weapon = Weapon.new(['rock', 'spock', 'paper', 'lizard', 'scissors'].sample)
p weapon
# cf. http://en.wikipedia.org/wiki/File:Normal_form_matrix_of_Rock-paper-scissors-lizard-Spock.jpg
spock = Weapon.new('spock')
p spock.name_to_number('spock') == 1
