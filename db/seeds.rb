require 'faker'
puts "Seeding data to the database ...."

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

User.destroy_all 

10.times do
    @user = User.create!(
        name: Faker::Name.unique.name_with_middle,
        address: Faker::Address.unique.street_address,
        phone_number: Faker::PhoneNumber.unique.cell_phone_with_country_code,
        ) 
    end

puts "Seeding operation complete !"