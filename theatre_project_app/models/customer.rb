require_relative( '../db/sql_runner' )

class Customer

  attr_accessor(:name, :premium, :show_id)
  attr_reader(:id)

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @premium = options['premium']
    @show_id = options['show_id']
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
    return Customers.new(results.first)
  end

  def self.delete_all
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end

end
