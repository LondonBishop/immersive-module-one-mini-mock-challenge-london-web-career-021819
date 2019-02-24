require 'pry'
require_relative './book'
require_relative './author'

a1 = Author.new("Harry Superwriter")
a1.write_book(a1, "Ruby at its best", 650)
a1.write_book(a1, "life without code", 100)


binding.pry
