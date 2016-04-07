  bank = User.create(
    name: "Banco de Valladolid",
    password: 12345678,
    password_confirmation: 12345678,
    email: "valladolid@anymail.com",
    type_of_user: "bank",
  )

  bank2 = User.create(
    name: "Banco de Guadalajara",
    password: 12345678,
    password_confirmation: 12345678,
    email: "guadalajara@anymail.com",
    type_of_user: "bank",
  )

  bank3 = User.create(
    name: "Banco de Soria",
    password: 12345678,
    password_confirmation: 12345678,
    email: "soria@anymail.com",
    type_of_user: "bank",
  )

  bank4 = User.create(
    name: "Banco de Zaragoza",
    password: 12345678,
    password_confirmation: 12345678,
    email: "zaragoza@anymail.com",
    type_of_user: "bank",
  )

  bank5 = User.create(
    name: "Banco de Lerida",
    password: 12345678,
    password_confirmation: 12345678,
    email: "lerida@anymail.com",
    type_of_user: "bank",
  )

  bank6 = User.create(
    name: "Banco de Toledo",
    password: 12345678,
    password_confirmation: 12345678,
    email: "toledo@anymail.com",
    type_of_user: "bank",
  )

  bank7 = User.create(
    name: "Banco de Cuenca",
    password: 12345678,
    password_confirmation: 12345678,
    email: "cuenca@anymail.com",
    type_of_user: "bank",
  )
  
  donor = User.new(
    name: "Carrefour",
    password: 12345678,
    password_confirmation: 12345678,
    email: "#carrefour@anymail.com",
    type_of_user: "donor",
    )

  donation = donor.donor_donations.new(
    description: "Alimentos no perecibles"
    )
  donor.save

  donor2 = User.new(
    name: "Mercadona",
    password: 12345678,
    password_confirmation: 12345678,
    email: "#mercadona@anymail.com",
    type_of_user: "donor",
    )
 
  donation2 = donor2.donor_donations.new(
    description: "Paquete para Banco de Zaragoza"
    )
  donor2.save

  donor3 = User.new(
    name: "Lidl",
    password: 12345678,
    password_confirmation: 12345678,
    email: "#lidl@anymail.com",
    type_of_user: "donor",
    )
 
  donation3 = donor3.donor_donations.new(
    description: "Verduras para escuela de Madrid"
    )
  donor3.save

  donor4 = User.new(
    name: "Upper",
    password: 12345678,
    password_confirmation: 12345678,
    email: "#upper@anymail.com",
    type_of_user: "donor",
    )
 
  donation4 = donor4.donor_donations.new(
    description: "Donación de legumbres"
    )
  donor4.save

  donor5 = User.new(
    name: "Eroski",
    password: 12345678,
    password_confirmation: 12345678,
    email: "#eroski@anymail.com",
    type_of_user: "donor",
    )
 
  donation5 = donor5.donor_donations.new(
    description: "Cajas de tomate"
    )
  donor5.save

  donor6 = User.new(
    name: "El corte inglés",
    password: 12345678,
    password_confirmation: 12345678,
    email: "#elcorteingles@anymail.com",
    type_of_user: "donor",
    )
 
  donation6 = donor6.donor_donations.new(
    description: "Bebidas sin abrir"
    )
  donor6.save

  donor7 = User.new(
    name: "Condis",
    password: 12345678,
    password_confirmation: 12345678,
    email: "#condis@anymail.com",
    type_of_user: "donor",
    )
 
  donation7 = donor7.donor_donations.new(
    description: "Mariscos en container"
    )
  donor7.save

  donor8 = User.new(
    name: "Casa ametller",
    password: 12345678,
    password_confirmation: 12345678,
    email: "#lidl@anymail.com",
    type_of_user: "donor",
    )
 
  donation8 = donor8.donor_donations.new(
    description: "Bolsas de aperitivo"
    )
  donor8.save

  donor9 = User.new(
    name: "Consum",
    password: 12345678,
    password_confirmation: 12345678,
    email: "#consum@anymail.com",
    type_of_user: "donor",
    )
 
  donation9 = donor9.donor_donations.new(
    description: "Papas y verduras"
    )
  donor9.save

  donor10 = User.new(
    name: "Alcampo",
    password: 12345678,
    password_confirmation: 12345678,
    email: "#alcampo@anymail.com",
    type_of_user: "donor",
    )
  
  donation10 = donor10.donor_donations.new(
    description: "Donación libre"
    )
  donor10.save


  product = donation.products.new(
    name: "Tallarines Carozi",
    amount: rand(10...42)
    )
  product.save

  product1 = donation.products.new(
    name: "Espirales Carozi",
    amount: rand(10...42)
    )
  product1.save

  product2 = donation.products.new(
    name: "Arroz Zuika",
    amount: rand(10...42)
    )
   product2.save

  product3 = donation.products.new(
    name: "Poroto Español",
    amount: rand(10...42)
    )
   product3.save

  product4 = donation.products.new(
    name: "Azucar Iansa",
    amount: rand(10...42)
    )
   product4.save

  product5 = donation2.products.new(
    name: "Aceite vegetal",
    amount: rand(10...42)
    )
   product5.save

  product6 = donation2.products.new(
    name: "Tomate reseco en lata",
    amount: rand(10...42)
    )
   product6.save

  product7 = donation2.products.new(
    name: "Huevos caja",
    amount: rand(10...42)
    )
   product7.save


  product8 = donation3.products.new(
    name: "Lechuga escarola",
    amount: rand(10...42)
    )
   product8.save


  product9 = donation3.products.new(
    name: "Cajas de tomate",
    amount: rand(10...42)
    )
   product9.save


  product10 = donation3.products.new(
    name: "Espárragos",
    amount: rand(10...42)
    )
    product10.save


  product11 = donation3.products.new(
    name: "Ramas de acelga",
    amount: rand(10...42)
    )
    product11.save


  product12 = donation3.products.new(
    name: "Cebolla",
    amount: rand(10...42)
    )
    product12.save


  product13 = donation3.products.new(
    name: "Cebollín",
    amount: rand(10...42)
    )
    product13.save


  product14 = donation3.products.new(
    name: "Ají verde",
    amount: rand(10...42)
    )
  product14.save


  product15 = donation4.products.new(
    name: "Alubias pintas",
    amount: rand(10...42)
    )
  product15.save


  product16 = donation4.products.new(
    name: "Lentejas rojas",
    amount: rand(10...42)
    )
    product16.save


  product17 = donation4.products.new(
    name: "Garbanzos",
    amount: rand(10...42)
    )
    product17.save


  product18 = donation5.products.new(
    name: "Tomates grandes",
    amount: rand(10...42)
    )
    product18.save


  product19 = donation5.products.new(
    name: "Tomates cherry",
    amount: rand(10...42)
    )
    product19.save


  product20 = donation6.products.new(
    name: "Coca cola light",
    amount: rand(10...42)
    )
    product20.save


  product21 = donation6.products.new(
    name: "Fanta limón",
    amount: rand(10...42)
    )
    product21.save


  product22 = donation6.products.new(
    name: "Sprite Zero",
    amount: rand(10...42)
    )
    product22.save


  product23 = donation6.products.new(
    name: "Pepsi",
    amount: rand(10...42)
    )
    product23.save


  product24 = donation6.products.new(
    name: "Bilz",
    amount: rand(10...42)
    )
    product24.save


  product25 = donation7.products.new(
    name: "Locos",
    amount: rand(10...42)
    )
    product25.save


  product26 = donation7.products.new(
    name: "Camarones",
    amount: rand(10...42)
    )
    product26.save


  product27 = donation7.products.new(
    name: "Choro maltón",
    amount: rand(10...42)
    )
    product27.save


  product28 = donation7.products.new(
    name: "Erizos",
    amount: rand(10...42)
    )
    product28.save


  product29 = donation7.products.new(
    name: "Ostras",
    amount: rand(10...42)
    )
    product29.save


  product30 = donation7.products.new(
    name: "Berberechos",
    amount: rand(10...42)
    )
    product30.save


  product31 = donation7.products.new(
    name: "Mejillones",
    amount: rand(10...42)
    )
    product31.save


  product32 = donation8.products.new(
    name: "Pan integral Bimbo",
    amount: rand(10...42)
    )
    product32.save


  product33 = donation8.products.new(
    name: "Galletas cracker",
    amount: rand(10...42)
    )
    product33.save


  product34 = donation8.products.new(
    name: "Panecillos de caviar",
    amount: rand(10...42)
    )
    product34.save


  product35 = donation8.products.new(
    name: "Nueces",
    amount: rand(10...42)
    )
    product35.save


  product36 = donation8.products.new(
    name: "Almendras",
    amount: rand(10...42)
    )
    product36.save


  product37 = donation8.products.new(
    name: "Maní",
    amount: rand(10...42)
    )
    product37.save


  product38 = donation8.products.new(
    name: "queso crema",
    amount: rand(10...42)
    )
    product38.save


  product39 = donation9.products.new(
    name: "papas en costal",
    amount: rand(10...42)
    )
    product39.save


  product40 = donation9.products.new(
    name: "papas fritas en bolsa",
    amount: rand(10...42)
    )
    product40.save


  product41 = donation9.products.new(
    name: "Abichuelas",
    amount: rand(10...42)
    )
    product41.save


  product42 = donation9.products.new(
    name: "Canasta champiñones",
    amount: rand(10...42)
    )
    product42.save


  product43 = donation9.products.new(
    name: "Brocoli",
    amount: rand(10...42)
    )
    product43.save


  product44 = donation9.products.new(
    name: "Brocoli",
    amount: rand(10...42)
    )
    product44.save


  product45 = donation10.products.new(
    name: "Maíz",
    amount: rand(10...42)
    )
    product45.save


  product46 = donation10.products.new(
    name: "Pimentón",
    amount: rand(10...42)
    )
    product46.save


  product47 = donation10.products.new(
    name: "Mantequilla de cacahuate",
    amount: rand(10...42)
    )
    product47.save


  product48 = donation10.products.new(
    name: "Zanahoria",
    amount: rand(10...42)
    )
    product48.save


  product49 = donation10.products.new(
    name: "Plátanos",
    amount: rand(10...42)
    )
    product49.save


  product50 = donation10.products.new(
    name: "Repollo",
    amount: rand(10...42)
    )
    product50.save