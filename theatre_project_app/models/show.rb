require_relative( '../db/sql_runner' )

class Show

  attr_accessor(:name, :showtime, :maxcapacity)
  attr_reader(:id)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @showtime = options['showtime']
    @maxcapacity = options['maxcapacity']
  end

  def save()
    sql = "INSERT INTO shows
    (
      name,
      showtime,
      maxcapacity
    )
    VALUES
    (
      $1, $2, $3
    )
    RETURNING id"
    values = [@name, @showtime, @maxcapacity]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.find(id)
    sql = "SELECT * FROM shows
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    show = Show.new(results.first)
    return show
  end

  def self.delete_all()
    sql = "DELETE FROM shows"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM shows where id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM shows"
    results = SqlRunner.run( sql )
    return results.map { |hash| Show.new(hash) }
  end

  def customers()
    sql = "SELECT * FROM customers
          WHERE show_id = $1"
    values = [@id]
    results = SqlRunner.run( sql, values )
    return results.map { |customer_hash| Customer.new(customer_hash) }
  end

  def update()
    sql = "UPDATE customers
    SET
    (
      name,
      showtime,
      maxcapacity
    ) =
    (
      $1, $2, $3
    )
    WHERE id = $4"
    values = [@name, @showtime, @maxcapacity, @id]
    SqlRunner.run(sql, values)
  end

end
