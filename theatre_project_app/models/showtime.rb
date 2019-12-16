require_relative( '../db/sql_runner' )

class Showtime

  attr_accessor(:showdate, :showtime)
  attr_reader(:id)

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @showdate = options['showdate']
    @showtime = options['showtime']
  end

  def save()
    sql = "INSERT INTO showtimes
    (
      showdate,
      showtime
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id"
    values = [@showdate, @showtime]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

end
