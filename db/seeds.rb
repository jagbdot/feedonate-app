10.times do |index|
  user = User.create(
    name: "Usuario #{index}",
    password: 12345678,
    password_confirmation: 12345678,
    email: "#{index}@prueba.com"
  )
  donation = Donation.create(
    description: "this is my donation number #{index}"
  )
  product = Product.create(
    amount: "#{index} productos", 
    date: Date.today
  )

  donation.products << product
  donation.save
  user.donations << donation
  user.save
end

max_user = User.create(
  name: "Mercadona",
  password: 12345678,
  password_confirmation: 12345678,
  email: "#p@prueba.com"
  )

Donation.all.each do |m|
  User.last.donations << m
  User.last.save
end

