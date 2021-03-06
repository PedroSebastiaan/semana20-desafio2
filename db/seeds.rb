# Insert coffees into DB
30.times do
    Coffe.create(name: Faker::Name.name,
    price: rand(1990..5490),
    origin: Faker::Coffee.origin,
    blend: Faker::Coffee.blend_name
    )
end

# Insert sales into DB
200.times do
    Sale.create(amount: rand(2000..10000),
    coffe_id: rand(Coffe.first.id..Coffe.last.id),
    created_at: Faker::Date.between(from: 1.year.ago, to: Date.today)
    )
end