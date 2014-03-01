require 'pg'
require 'faker'

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

  def import_results(wins, losses)
    #database logic
   database = 'rpsls_data'
    ignore_errors = "/dev/null 2>&1"
    `createdb #{database} #{ignore_errors}`
    db_connection = PG.connect( dbname: database )
    db_connection.exec("drop table if exists users;")
    db_connection.exec(<<-SQL
      create table users
      (
        id        serial primary key,
        username  varchar(255),
        wins      int,
        losses    int
      );
      SQL
    )
    max = #max id
    db_connection.exec(<<-SQL
      insert into users
      values (1, '#{@name}', #{wins}, #{losses});
      SQL
    )
    p db_connection.exec("select * from users;").values
  end

end

