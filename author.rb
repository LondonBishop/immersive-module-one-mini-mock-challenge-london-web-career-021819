class Author

attr_reader :name

@@authors = []
@@TopAuthor =[]

  def initialize(name=nil)
    @name = name
    @@authors << self
  end

  def self.all
    @@authors
  end

  def books
      Book.all.select { |book| book.author == self}
  end

  def write_book(title, wordcount)
     Book.new(self, title, wordcount)
  end

  def total_words
      totalwords = 0

      Book.all.map { |book| book.author == self
          totalwords += book.wordcount
        }

        return totalwords
  end


  def self.most_words
        topwordcount = 0
        topwordcount_author = nil

        Book.all.select { |book| book.wordcount > topwordcount
           topwordcount_author = book.author
           topwordcount = book.wordcount
        }

      return topwordcount_author
    end

end

# ### `Author`
# Build the following methods on the Author class

# - `Author.all`
# should return all of the authors


# - `Author#books`
# should return all of the books an author has written


# - `Author#write_book`
# should take arguments of a title and word count and make a new Book instance associated with this author


# - `Author#total_words`
# should return the total number of words that author has written across all of their authored books.

# - `Author.most_words`
# should return the author instance who has written the most words
