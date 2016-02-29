require 'minitest'
require 'linked_list'

class AcceptanceTest < Minitest::Test
  def test_acceptance_test

   list = LinkedList.new

   assert_equal nil, list[0]

   list << "b"
   assert_equal "b", list[0]
   assert_equal nil, list[1]

   list.push "c"
   assert_equal "b", list[0]
   assert_equal "c", list[1]
   assert_equal nil, list[2]

   list.pop
   assert_equal "b", list[0]
   assert_equal nil, list[1]

   list.unshift "a"
   assert_equal "a", list[0]
   assert_equal "b", list[1]
   assert_equal nil, list[2]

   list.shift
   assert_equal "b", list[0]
   assert_equal nil, list[1]

  end
end
