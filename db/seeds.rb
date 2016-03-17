10.times do |index|
    donation = Donation.create(
        description: "this is my donation number #{index}"
    )
end