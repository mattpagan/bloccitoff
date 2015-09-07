require 'faker'

member = User.new(
name:     'Member User',
email:    'member@example.com',
password: 'helloworld'
)
member.skip_confirmation!
member.save!

puts "Seed finished"
puts "#{User.count} users created"