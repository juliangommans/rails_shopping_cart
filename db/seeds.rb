
25.times do |x|
  y = rand(10..30) * (x+10)
  Product.create(name: Faker::Hacker.noun, description: Faker::Hacker.say_something_smart, price: y)
end
