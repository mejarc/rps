
class User #melanie
  #attributes: id (database-generated primary key), name (default is user's phone #)
  #behavior: add_up_total_score
  attr_accessor :id, :name, :score

  def initialize(id = 1, name = 4155551212)
    @id = id
    @name = name
    @score = 0
  end

  def add_up_score
    # needs to compute from Session?
  end

end