require_relative("../models/customer.rb")
require_relative("../models/show.rb")

require ("pry")

# Show.delete_all
# Customer.delete_all

customer1 = Customer.new({
  "name" => "Tabetha Applegrass",
  "premium" => false,
  "show" => show1.id,
  "showdate" => show1.showdate1
  })

customer2 = Customer.new({
  "name" => "Gerald FitzGerald II",
  "premium" => true,
  "show" => show2.id,
  "showdate" => show2.showdate1
  })

customer3 = Customer.new({
  "name" => "Geraldine FitzGerald",
  "premium" => false,
  "show" => show2.id,
  "showdate" => show2.showdate1
  })

customer4 = Customer.new({
  "name" => "William Rae Cyrus",
  "premium" => true,
  "show" => show3.id,
  "showdate" => show3.showdate1
  })

customer5 = Customer.new({
  "name" => "Shamus Jones",
  "premium" => false,
  "show" => show4.id,
  "showdate" => show4.showdate1
  })

customer6 = Customer.new({
  "name" => "seamus Jones",
  "premium" => false,
  "show" => show4.id,
  "showdate" => show4.showdate1
  })



show1 = Show.new({
  "name" => "Bargain Hunt: LIVE!",
  "premium1" => "2020-07-17",
  "premium2" => "18/07/2020",
  "premium3" => "19/07/2020",
  "showdate1" => "20/07/2020",
  "showdate2" => "21/07/2020",
  "showdate3" => "22/07/2020",
  "showdate4" => "23/07/2020",
  "showdate5" => "24/07/2020",
  "showdate6" => "25/07/2020",
  "showdate7" => "26/07/2020",
  "showdate8" => "27/07/2020",
  "showdate9" => "28/07/2020",
  "showdate10" => "29/07/2020",
  "showdate11" => "30/07/2020",
  "showdate12" => "01/08/2020"
    })

show2 = Show.new({
  "name" => "Die Hard: The Musical",
  "premium1" => "08/08/2020",
  "premium2" => "09/08/2020",
  "premium3" => "10/08/2020",
  "showdate1" => "11/08/2020",
  "showdate2" => "12/08/2020",
  "showdate3" => "13/08/2020",
  "showdate4" => "14/08/2020",
  "showdate5" => "15/08/2020",
  "showdate6" => "16/08/2020",
  "showdate7" => "17/08/2020",
  "showdate8" => "18/08/2020",
  "showdate9" => "19/08/2020",
  "showdate10" => "20/08/2020",
  "showdate11" => "21/08/2020",
  "showdate12" => "22/08/2020"
    })

show3 = Show.new({
  "name" => "Okey Dokey Tatoo",
  "premium1" => "23/08/2020",
  "premium2" => "24/08/2020",
  "premium3" => "25/08/2020",
  "showdate1" => "26/08/2020",
  "showdate2" => "27/08/2020",
  "showdate3" => "28/08/2020",
  "showdate4" => "29/08/2020",
  "showdate5" => "30/08/2020",
  "showdate6" => "31/08/2020",
  "showdate7" => "01/09/2020",
  "showdate8" => "02/09/2020",
  "showdate9" => "03/09/2020",
  "showdate10" => "04/09/2020",
  "showdate11" => "05/09/2020",
  "showdate12" => "06/09/2020"
    })

show4 = Show.new({
  "name" => "Fred West Side Story",
  "premiumDate1" => "12/09/2020",
  "premiumDate2" => "13/09/2020",
  "premiumDate3" => "14/09/2020",
  "showdate1" => "15/09/2020",
  "showdate2" => "16/09/2020",
  "showdate3" => "17/09/2020",
  "showdate4" => "18/09/2020",
  "showdate5" => "19/09/2020",
  "showdate6" => "20/09/2020",
  "showdate7" => "21/09/2020",
  "showdate8" => "22/09/2020",
  "showdate9" => "23/09/2020",
  "showdate10" => "24/09/2020",
  "showdate11" => "25/09/2020",
  "showdate12" => "26/09/2020",
    })
