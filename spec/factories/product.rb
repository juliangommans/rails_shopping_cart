require 'faker'

FactoryGirl.define do

 factory :product do
 	name Faker::Hacker.noun
 	description Faker::Lorem.sentence
 	price Faker::Commerce.price
 end

end