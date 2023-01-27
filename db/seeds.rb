# This will delete any existing rows from the Restaurant and Customer tables
# so you can run the seed file multiple times without having duplicate entries in your database
require 'pry'

puts "Deleting Restaurant/Customer data..."
Product.destroy_all
User.destroy_all
Purchase.destroy_all

puts "Products..."
p1 = Product.create(name:"Alt-girlie", price: 36, description:"51 in/4.3ft long, fits 6in pot", inventory: 10, front_image: "https://iili.io/H09P6iX.jpg", back_image: "https://iili.io/H09PDOl.jpg", discount: false)
p2 = Product.create(name: "Berry Knotty-green and yellow", price: 28, description:"40 in/3.4ft long, fits 5-6in pot", inventory: 6, front_image: "https://iili.io/H09PBPn.jpg", back_image: "https://iili.io/H09iK5x.jpg", discount: false)
p3 = Product.create(name: "Berry Knotty-braids", price: 36, description:"51 in/4.3ft long, fits 6in pot", inventory: 8, front_image: "https://iili.io/H09iCzB.jpg", back_image: "https://iili.io/H09i5eR.jpg", discount: false)
p4 = Product.create(name: "Berry Knotty-fringe", price: 38, description:"41in/3.5ft long, fits 6-8in pot", inventory: 4, front_image: "https://iili.io/H09ilst.jpg", back_image: "https://iili.io/H09ihml.jpg", discount: false)
p5 = Product.create(name: "Berry Knotty-sunkissed", price: 26, description:"38in/3ft long, fits 5in pot", inventory: 10, front_image: "https://iili.io/H09iNXS.jpg", back_image: "https://iili.io/H09iUdb.jpg", discount: false)
p6 = Product.create(name: "Lovely Lady Fringe", price: 36, description:"51 in/4.3ft long, fits 6in pot", inventory: 4, front_image: "https://iili.io/H09isLP.jpg", back_image:"https://iili.io/H09ipkv.jpg", discount: true)
p7 = Product.create(name: "Knotty Hoops", price: 26, description:"38in/3ft long, fits 5in pot", inventory: 3, front_image: "https://iili.io/H09scyx.jpg", back_image: "https://iili.io/H09sjaa.jpg", discount: true)
p8 = Product.create(name: "Knotty Braids", price: 28, description:"40 in/3.4ft long, fits 5-6in pot", inventory: 5, front_image: "https://iili.io/H09sDnS.jpg", back_image: "https://iili.io/H09syFe.jpg", discount: true)
p9 = Product.create(name: "Knotty Jutey", price: 28, description:"40 in/3.4ft long, fits 5-6in pot", inventory: 7, front_image: "https://iili.io/H09L2Ax.jpg", back_image: "https://iili.io/H09LqMP.jpg", discount: false)
p10 = Product.create(name: "Spicy Knots", price: 26, description:"38in/3ft long, fits 5in pot", inventory: 5, front_image: "https://iili.io/H09LIHJ.jpg", back_image: "https://iili.io/H09LuNR.jpg", discount: false)
p11 = Product.create(name: "Double Knotty", price: 38, description:"41in/3.5ft long, fits 6-8in pot", inventory: 3, front_image: "https://iili.io/H09LYPt.jpg", back_image: "https://iili.io/H09LVDl.jpg", discount: false)
p12 = Product.create(name: "Little Miss Knot", price: 26, description:"38in/3ft long, fits 5in pot", inventory: 9, front_image: "https://iili.io/H09LXx2.jpg", back_image: "https://iili.io/H09LNf9.jpg", discount: true)
p13 = Product.create(name: "Knot-so Minimal", price: 28, description:"40 in/3.4ft long, fits 5-6in pot", inventory: 6, front_image: "https://iili.io/H09LvHb.jpg", back_image: "https://iili.io/H09LrxV.jpg", discount: true)
p14 = Product.create(name: "Glitters Knot Gold", price: 38, description:"41in/3.5ft long, fits 6-8in pot", inventory: 3, front_image: "https://iili.io/H09Ls0F.jpg", back_image: "https://iili.io/H09Qfef.jpg", discount: true)
p15 = Product.create(name: "Knotty Knockers", price: 26, description:"38in/2ft long", inventory: 2, front_image: "https://iili.io/H09QPI4.jpg", back_image: nil, discount: false)
p16 = Product.create(name: "All tied up", price: 36, description:"51 in/4.3 ft. long, fits 6in pot", inventory: 7, front_image: "https://iili.io/H09bO9n.jpg", back_image: nil, discount: true) 


puts "Creating users..."
u1 = User.create(first_name: "Sarah", last_name: "Nicole", address: "2102 Highlands Ln., Denver, CO 80202", phone_number: 2102761618, email: "s.nicole001@gmail.com", password: "Peace665123!")
u2 = User.create(first_name: "Charlene", last_name: "Madera", address: "131 Raynor Rd., El Paso, TX 79912", phone_number: 9154478679, email: "CM220@yahoo.com", password: "CM12052008!")
u3 = User.create(first_name: "Marie", last_name: "Montano", address: "1044 Mechem Drive, Ruidoso, NM 88345", phone_number: 5053698563, email: "Montano.M61@gmail.com", password: "Health4life21?")
u4 = User.create(first_name: "Matthew", last_name: "Cortez", address: "937 NW 23rd Ave, Portland, OR 97210", phone_number:5032479616, email: "velvetundergroundsavvy@gmail.com", password: "Wewantmore$$4eva!")



puts "Creating purchases..."

Purchase.create(user: u1, product: p13, quantity: 2, final_price: 45)
Purchase.create(user: u2, product: p5, quantity: 1, final_price: 30)
Purchase.create(user: u3, product: p15, quantity: 1, final_price: 26)
Purchase.create(user: u4, product: p1, quantity: 4, final_price: 144)



binding.pry
puts "Seeding done!"