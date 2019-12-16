# require_relative( '../db/sql_runner' )
#
# class Premshowtime
#
#   attr_accessor(:premdate, :premtime)
#   attr_reader(:id)
#
#   def initialize( options )
#     @id = options['id'].to_i if options['id']
#     @premshowtime = options['premshowtimes']
#     @premtime = options['premshowtimes']
#   end
#
#   def save()
#     sql = "INSERT INTO showtimes
#     (
#       premdates,
#       premtimes
#     )
#     VALUES
#     (
#       $1, $2
#     )
#     RETURNING id"
#     values = [@premdate, @premtime]
#     results = SqlRunner.run(sql, values)
#     @id = results.first()['id'].to_i
#   end
#
# end
