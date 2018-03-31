file='lib/animals.txt'

Animal.destroy_all
Person.destroy_all

File.readlines(file).each do |line|
  line.delete!("\r\n\\")
  puts "adding... #{line}"
  Animal.create!(name: line)
end

200.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  title = Faker::Name.title

  Person.create!(first_name: first_name, last_name: last_name, title: title)
end
