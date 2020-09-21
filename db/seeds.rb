# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.find_or_create_by!(email: 'admin@email.com') do |user|
  user.name = 'admin',
  user.password = 'p',
  user.password_confirmation = 'p'
end

(1..10).each do |i|
Key.create!(
  key: ('a'..'z').to_a.shuffle[0..7].join,
  key_label: "key#{i}",
  user_id: 1
)
end