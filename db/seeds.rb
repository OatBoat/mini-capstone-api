require 'faker'

i = 1
10.times do
  Product.create(
    name: Faker::Name.name,
    price: rand(2),
    image_url: Faker::LoremFlickr.image,
    description: "description #{i}"
  )
  i += 1
end