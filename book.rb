class Book

  attr_reader :author, :title, :wordcount
  @@all_books =[]
# ### `Book`
# Build the following methods on the Book class
#
  def initialize (author, title, wordcount)
      @author = author
      @title = title
      @wordcount = wordcount
      @@all_books << self
  end
# - `Book.all`
# should return all of the books
def self.all
    @@all_books
end
# - `Book#author`
# should return the author instance who wrote this book
# - `Book#title`
# should return the title of the book
# - `Book#word_count`
# should return the number of words in the book

end
