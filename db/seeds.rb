10.times do |i|
  user = User.new(
    name: "Donante #{i}",
    password: 12345678,
    password_confirmation: 12345678,
    email: "#{i}@donanteprueba.com",
    type_of_user: "donor",
    )
  user.save
  donation = user.donor_donations.new(
    description: "Donación #{i}",
    )
  donation.save
  product = donation.products.create(
    name: "Producto #{i}",
    )
  product.save
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
