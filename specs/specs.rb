require ('minitest/autorun')
require ('minitest/reporters')
require_relative('../library.rb')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestLibrary < MiniTest::Test
  def setup
    @library=Library.new([{title:"The Lord of the Rings", rental_details:{student_name:"Joseph",date: "01/05/2016"}},{title:"The Hobbit",rental_details:{student_name:"Michelle",date:"05/03/18"}}])
  end

#testing to ensure I can access the indibvidual elements- this works fine
def test_get_all_books
  assert_equal("Michelle",@library.books[1][:rental_details][:student_name])
end










end
