10.times do |index|
  user = User.create(
    name: "Usuario #{index}",
    password: 12345678,
    password_confirmation: 12345678,
    email: "#{index}@prueba.com",
    type_of_user: "bank",
  )
end

