User.destroy_all

10.times do
  user = User.new
  user.first_name = Faker::Name.first_name
  user.last_name = Faker::Name.last_name
  user.password = "password"
  user.email = Faker::Internet.safe_email("#{user.first_name} #{user.last_name}")
  user.username = Faker::Internet.user_name("#{user.first_name} #{user.last_name}", ["_"])
  user.street_address = Faker::Address.street_address
  user.city = Faker::Address.city
  user.state = Faker::Address.state_abbr
  user.zip = Faker::Address.zip
  user.avatar_url = Faker::Avatar.image
  user.save
end