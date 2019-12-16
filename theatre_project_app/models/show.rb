require_relative( '../db/sql_runner' )

class Show

  attr_accessor(:name)
  attr_reader(:id)

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @showtime = options['showtime']
  end

  def save()
    sql = "INSERT INTO shows
    (
      name,
      showtime
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id"
    values = [@name, @showtime]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.find( id )
    sql = "SELECT * FROM shows
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    return Shows.new(results.first)
  end

  def self.delete_all
    sql = "DELETE FROM shows"
    SqlRunner.run( sql )
  end

end
