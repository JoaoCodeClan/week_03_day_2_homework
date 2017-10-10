require('pg')

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

def save()
  db = PG.connect ({dbname: 'Space_cowboys', host: 'localhost'})

  sql= "INSERT INTO bounty( name, species, bounty_value, danger_level) VALUES($1, $2, $3, $4)"
  values = [@name, @species, @bounty_value, @danger_level]

  db.prepare("save", sql)

  # @id = db.exec_prepared('save',values)[0]['id'].to_i()
  db.exec_prepared("save", values)
  db.close()
end

def self.all()
    db = PG.connect ({dbname: 'Space_cowboys', host:'localhost'})
    sql = "SELECT * FROM bounty"
    values = []
    db.prepare("all", sql)
    bounty = db.exec_prepared("all", values)
    db.close()

    bounties = bounty.map{|wanted| Bounty.new(bounty)}

    return bounties
end
def self.delete_all()
    db = PG.connect({dbname:'Space_cowboys', host:'localhost'})
    sql = "DELETE FROM bounty"
    values = []
    db.prepare("delete_all", sql)
    db.exec_prepared("delete_all", values)
    db.close()
  end
end
