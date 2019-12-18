require_relative("../models/show.rb")
# require_relative("../models/showtime.rb")
require_relative("../models/customer.rb")

require ("pry")

Customer.delete_all
Show.delete_all

show1 = Show.new({
  "name"        => "Bargain Hunt: LIVE!",
  "showtime"    => "Monday, 7pm",
  "maxcapacity"  => 1000
    })
show1.save()

show2 = Show.new({
  "name" => "Die Hard: The Musical",
  "showtime" => "Tuesday, 7pm",
  "maxcapacity"  => 122
    })
show2.save()

show3 = Show.new({
  "name" => "Okey Dokey Tattoo",
  "showtime" => "Thursday, 7pm",
  "maxcapacity"  => 163
    })
show3.save()

show4 = Show.new({
  "name" => "Neebleton",
  "showtime" => "Friday, 7pm",
  "maxcapacity"  => 199
    })
show4.save()

show5 = Show.new({
  "name" => "The Great Cornish Pasty Heist",
  "showtime" => "Saturday, 7pm",
  "maxcapacity"  => 100
    })
show5.save()

show6 = Show.new({
  "name" => "That's Amazing! with Fiona Murray",
  "showtime" => "Saturday, 7pm",
  "maxcapacity"  => 100
    })
show6.save()

show7 = Show.new({
  "name" => "Animal Hospital: Surgery LIVE!",
  "showtime" => "Saturday, 7pm",
  "maxcapacity"  => 100
    })
show7.save()

show8 = Show.new({
  "name" => "Inner Join: Unplugged",
  "showtime" => "Saturday, 7pm",
  "maxcapacity"  => 100
    })
show8.save()


customer1 = Customer.new({
  "name" => "Tabetha Applegrass",
  "premium" => false,
  "show_id" => show1.id
  })
customer1.save()

customer2 = Customer.new({
  "name" => "Gerald FitzGerald II",
  "premium" => true,
  "show_id" => show2.id
  })
customer2.save()

customer3 = Customer.new({
  "name" => "Geraldine FitzGerald",
  "premium" => false,
  "show_id" => show3.id
  })
customer3.save()

customer4 = Customer.new({
  "name" => "William Rae Cyrus",
  "premium" => true,
  "show_id" => show3.id
  })
customer4.save()

customer5 = Customer.new({
  "name" => "Shamus Jones",
  "premium" => false,
  "show_id" => show4.id
  })
customer5.save()

customer6 = Customer.new({
  "name" => "Seamus Jones",
  "premium" => false,
  "show_id" => show4.id
  })
customer6.save()

customer7 = Customer.new({
  "name" => "Владимир Путин",
  "premium" => true,
  "show_id" => show5.id
  })
customer7.save()

customer8 = Customer.new({
  "name" => "Egg McGee",
  "premium" => true,
  "show_id" => show6.id
  })
customer8.save()

customer9 = Customer.new({
  "name" => "Snoop Dog",
  "premium" => true,
  "show_id" => show7.id
  })
customer9.save()

customer10 = Customer.new({
  "name" => "Mr T Rock",
  "premium" => false,
  "show_id" => show8.id
  })
customer10.save()

pry.binding
nil
