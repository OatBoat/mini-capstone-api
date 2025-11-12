require 'faker'

Product.destroy_all
Supplier.destroy_all

supplier = Supplier.create(name: "Building inc.")

i = 1
10.times do
  Product.create!(
    name: Faker::Name.name,
    price: rand(2),
    image_url: Faker::LoremFlickr.image,
    description: "description #{i}",
    supplier_id: supplier.id
  )
  i += 1
end