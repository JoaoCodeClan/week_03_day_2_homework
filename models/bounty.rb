class Bounty

  attr_accessor :name, :species, :bounty_value, :danger_level
  attr_reader :id

  def initialize(bounty)
    @id = bounty['id'].to_i if bounty['id']
    @name = bounty['name']
    @species = bounty['species']
    @bounty_value = bounty['bounty_value']
    @danger_level = bounty['danger_level']

  end


end
