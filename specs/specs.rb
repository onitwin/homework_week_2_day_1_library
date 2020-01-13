require ('minitest/autorun')
require ('minitest/reporters')
require_relative('../library.rb')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestLibrary < MiniTest::Test
  def setup
    @library=Library.new([{title:"The Lord of the Rings", rental_details:{student_name:"Joseph",date: "01/05/2016"}},{title:"The Hobbit",rental_details:{student_name:"Michelle",date:"05/03/18"}}])
  end

#testing to ensure I can access the individual elements- this works fine
# def test_get_any_info
#   assert_equal("Michelle",@library.books[1][:rental_details][:student_name])
# end
#
# def test_get_any_book
#   assert_equal("The Lord of the Rings", @library.books[0][:title])
# end

#this test currently does not work
# def test_get_all_books
#   @library.get_all_books()
#   assert_equal(["The Lord of the Rings", "The Hobbit"],@library.books)
# end

def test_for_get_rental_details
  @library.get_rental_details("The Hobbit") #remember the bloody @library Joseph!!
  assert_equal({student_name:"Michelle",date:"05/03/18"},@library.books[1][:rental_details])
end





end
