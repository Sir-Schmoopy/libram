class Book
  attr_accessor :title, :author, :pages
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end
end

book1 = Book.new("The Lies of Locke Lamora", "Scott Lynch", 500)
book1.title = "The Lies of Locke Lamora"
book1.author = "Scott Lynch"
book1.pages = 700

# book2 = Book.new()
# book2.title = "The Silmarillion"
# book2.author = "Tolkien"
# book2.pages = "900"

puts book1.pages