10.times do |i|
  user = User.create(
    name: "Donante #{i}",
    password: 12345678,
    password_confirmation: 12345678,
    email: "#{i}@donanteprueba.com",
    type_of_user: "donor",
    )

  donation = user.donor_donations.create(
    description: "Donación #{i}"
    )

  10.times do |i|
    product = donation.products.new(
      name: "Producto #{i}",
      amount: rand(10...42)
      )
    product.save
  end
end

10.times do |index|
  bank = User.create(
    name: "Banco #{index}",
    password: 12345678,
    password_confirmation: 12345678,
    email: "#{index}@bancoprueba.com",
    type_of_user: "bank",
  )
end
