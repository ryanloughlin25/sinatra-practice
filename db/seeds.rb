number_of_publishers = 2
number_of_authors = 5
books_per_author = 3

number_of_publishers.times do
  Publisher.create(name: Faker::Company.name)
end

number_of_authors.times do
  author = Author.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  books_per_author.times do
    book = author.books.create(title: Faker::Lorem.sentence, published_at: Faker::Address.city)
    book.update_attributes(publisher: Publisher.all.sample)
  end
end





# dr = Author.create(first_name: "Dr.", last_name: "Suess")
# isa = Author.create(first_name: "Isaac", last_name: "Asimov")
# jk = Author.create(first_name: "J.K", last_name: "Rowlings")

# cat = Book.create(title: "The Cat in the Hat", published_at: "Petaluma")
# zoo = Book.create(title: "Put me in the Zoo", published_at: "The Zoo")
# cave = Book.create(title: "Caves of Steel", published_at: "Earths Core")
# found = Book.create(title: "Foundation", published_at: "Milky Way ohhhh")
# #stone = Book.create(title: "The Sorcerers Stone", published_at: "London")

# Authorship.create(author_id: dr.id, book_id: cat.id)
# Authorship.create(author_id: dr.id, book_id: zoo.id)
# Authorship.create(author_id: isa.id, book_id: cave.id)
# Authorship.create(author: isa, book: found)
# #Authorship.create(author_id: jk.id, book_id: stone.id)

# jk.books.create(title: "The Sorcerers Stone", published_at: "London")
# # jk.books.create(title: "Chamber of Secrets", published_at: "New York")
# # jk.books.create(title: "The Order of the Phoenix", published_at: "London")
# # jk.books.create(title: "The Half-Blood Prince", published_at: "London")