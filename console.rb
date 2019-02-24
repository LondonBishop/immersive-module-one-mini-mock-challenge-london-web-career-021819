require 'pry'
require_relative './book'
require_relative './author'

a1 = Author.new("Harry Superwriter")
a2 = Author.new("Sam Smith")

a1.write_book("Ruby at its best", 650)
a2.write_book("life without code", 800)

binding.pry
