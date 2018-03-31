file='lib/animals.txt'

Animal.destroy_all

File.readlines(file).each do |line|
  line.delete!("\r\n\\")
  puts "adding... #{line}"
  Animal.create!(name: line)
end
