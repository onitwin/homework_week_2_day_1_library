class Library

  attr_accessor :books


  def initialize (books)
    @books=books
  end


  #getters

  def get_any_book(book_to_check)
    for i in @books
      if i[:title] ==book_to_check
        return book_to_check
      end
    end
    
  end




end
