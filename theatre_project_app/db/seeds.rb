require_relative("../models/show.rb")
# require_relative("../models/showtime.rb")
require_relative("../models/customer.rb")

require ("pry")

Customer.delete_all
Show.delete_all

show1 = Show.new({
  "name" => "Bargain Hunt: LIVE!",
  "showtime" => "Monday, 7pm"
    })
show1.save()

show2 = Show.new({
  "name" => "Die Hard: The Musical",
  "showtime" => "Monday, 7pm"
    })
show2.save()

show3 = Show.new({
  "name" => "Okey Dokey Tatoo",
  "showtime" => "Monday, 7pm"
    })
show3.save()

show4 = Show.new({
  "name" => "Fred West Side Story",
  "showtime" => "Monday, 7pm"
    })
show4.save()


customer1 = Customer.new({
  "name" => "Tabetha Applegrass",
  "premium" => false,
  "show_id" => show1.id,
  })
customer1.save()

customer2 = Customer.new({
  "name" => "Gerald FitzGerald II",
  "premium" => true,
  "show_id" => show2.id,
  })
customer2.save()

customer3 = Customer.new({
  "name" => "Geraldine FitzGerald",
  "premium" => false,
  "show_id" => show2.id,
  })
customer3.save()

customer4 = Customer.new({
  "name" => "William Rae Cyrus",
  "premium" => true,
  "show_id" => show3.id,
  })
customer4.save()

customer5 = Customer.new({
  "name" => "Shamus Jones",
  "premium" => false,
  "show_id" => show4.id,
  })
customer5.save()

customer6 = Customer.new({
  "name" => "Seamus Jones",
  "premium" => false,
  "show_id" => show4.id,
  })
customer6.save()

pry.binding
nil
