
25.times do |x|
  y = rand(1..3) * x+1
  Product.create(name: Faker::Hacker.noun, description: Faker::Hacker.say_something_smart, price: y)
end
