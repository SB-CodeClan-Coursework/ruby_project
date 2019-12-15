require_relative( '../db/sql_runner' )

class Customer

  attr_accessor(:name, :premium, :show, :showdate)
  attr_reader(:id)

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @premium = options['premium']
    @show = options['show'].to_i
    @showdate = options['showDate']
  end

  def save()
    sql = "INSERT INTO customers
    (
      name,
      premium,
      show,
      showDate
    )
    VALUES
    (
      $1, $2, $3, $4
    )
    RETURNING id"
    values = [@name, @premium, @show, @showdate]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

end
