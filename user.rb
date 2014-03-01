
class User #melanie
  #attributes: id (database-generated primary key), name (default is user's phone #)
  #behavior: add_up_total_score
  attr_accessor :id, :name, :score
  attr_reader :weapon

  def initialize(name = "Computer", id = 1)
    @id = id
    @name = name
    @score = 0
    # @weapons = Hash.
  end

  def set_weapon(weapon_name)
    @weapon = Weapon.new(weapon_name)
  end

  def add_up_score
    # needs to compute from Session?
  end

end

