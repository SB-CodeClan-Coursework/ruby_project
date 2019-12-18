require_relative('../db/sql_runner')

class Customer

  attr_accessor(:name, :premium, :show_id)
  attr_reader(:id)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @premium = options['premium']
    @show_id = options['show_id'].to_i
  end

  def save()
    sql = "INSERT INTO customers
    (
      name,
      premium,
      show_id
    )
    VALUES
    (
      $1, $2, $3
    )
    RETURNING id"
    values = [@name, @premium, @show_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.find( id )
    sql = "SELECT * FROM customers
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    return Customer.new(results.first)
  end

  def self.all()
    sql = "SELECT * FROM customers
    ORDER BY name"
    results = SqlRunner.run( sql )
    return results.map {|hash| Customer.new(hash)}
  end

  def self.delete_all
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end

  def update()
    sql = "UPDATE customers
    SET
    (
      name,
      premium,
      show_id
    ) =
    (
      $1, $2, $3
    )
    WHERE id = $4"
    values = [@name, @premium, @show_id, @id]
    SqlRunner.run(sql, values)
  end

  def shows()
    sql = "SELECT * FROM shows
          WHERE id = $1"
    values = [@show_id]
    results = SqlRunner.run(sql, values)
    return results.map {|shows_hash| Show.new(shows_hash)}
  end

end
