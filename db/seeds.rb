puts "Start of Seeding..."
Book.destroy_all
50.times do
  params = {
    title: Faker::Book.unique.title,
    author: Faker::Book.unique.author,
    publisher: Faker::Book.publisher,
    genre: Faker::Book.genre,
    description: Faker::Lorem.paragraph  
  }
  puts "Creating Book: #{params}"
  book = Book.new(params)
  book.save
end

puts "Seeding Over"