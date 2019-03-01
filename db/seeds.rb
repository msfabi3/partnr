# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/seed/#{file_name}.jpg"))
end

def seed_video(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/seed/#{file_name}.mp4"))
end

puts "creating 5 user (admin)..."
5.times do
  User.create(first_name: "Admin", last_name: "User", email: "admin@test.com", bio: "I'm Admin Regular, what else do you wanna know?", CPF: "4446667772", occupation: "Motherfucker CEO", address: "Eike's residence", phone_number: "11988776655", password: "123456", adm: true)
end
puts "done!"

cont = 0
3.times do
  cont += 1
  puts "creating #{cont} (car)..."
  Good.create(brand: "Lamborgini", model: "Aventador", model_year: 2014, fabrication_year: 2015, serial_number: "12345tfdsadfg", licens_plate: "EIK-1111", kilometers: "8000", price: "1500000", color: "perola", facts: "Esse carro eh foda!", version: "v12", good_type: 'car', photo_one: seed_image('carousel1'), photo_two: seed_image('carousel2'), photo_three: seed_image('carousel3'), photo_four: seed_image('carousel4'), video: seed_video('carousel-video'))
end
puts "done!"
