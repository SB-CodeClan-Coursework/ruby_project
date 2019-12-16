require_relative( '../db/sql_runner' )

class Show

  attr_accessor(:name, :maxcapcity)
  attr_reader(:id)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @showtime = options['showtime']
    @maxcapcity = options['maxcapcity']
  end

  def save()
    sql = "INSERT INTO shows
    (
      name,
      showtime,
      maxcapcity
    )
    VALUES
    (
      $1, $2, $3
    )
    RETURNING id"
    values = [@name, @showtime, @maxcapcity]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.find(id)
    sql = "SELECT * FROM shows
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    return Shows.new(results.first)
  end

  def self.delete_all
    sql = "DELETE FROM shows"
    SqlRunner.run(sql)
  end

  def update()
    sql = "UPDATE customers
    SET
    (
      name,
      showtime,
      maxcapcity
    ) =
    (
      $1, $2, $3
    )
    WHERE id = $4"
    values = [@name, @showtime, @maxcapcity, @id]
    SqlRunner.run(sql, values)
  end

end
