class Library

  attr_accessor :books


  def initialize (books)
    @books=books
  end


  #getters

  def get_any_book(book_to_check)
    for book in @books
      if book[:title] ==book_to_check
        return book_to_check
      end
    end

  end

  def get_all_books
    all_books=[]
    for book in @books
      all_books.push(@books[:title])
    end
    return all_books
  end

  def get_rental_details(book_to_check)
    for book in @books
      if book[:title] ==book_to_check
        return book[:rental_details]
      end
    end

  end





end
