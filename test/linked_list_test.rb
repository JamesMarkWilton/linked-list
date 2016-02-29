 require 'minitest'
 require 'linked_list'

class LinkedListTest < Minitest::Test
  def test_a_list_is_created_with_a_nil_value
    list = LinkedList.new

    assert_equal nil, list[0]
  end

  def test_shovel_puts_a_new_value_at_end_of_a_list
    list = LinkedList.new
    list << "a"

    assert_equal "a", list[0]
  end

  def test_brackets_return_value_at_data_or_link
    list = LinkedList.new

    assert_equal nil, list[0]

    list << "a"
    assert_equal "a", list[0]
    assert_equal nil, list[1]

  end

  def test_push_puts_a_new_value_at_the_end_of_a_list
    list = LinkedList.new

    list.push "a"
    assert_equal "a", list[0]
    assert_equal nil, list[1]

    list.push "b"
    assert_equal "a", list[0]
    assert_equal "b", list[1]
    assert_equal nil, list[2]
  end

  def test_pop_removes_a_value_from_the_end_of_a_list
    list = LinkedList.new

    list.push "a"
    list.push "b"
    list.push "c"
    assert_equal "a", list[0]
    assert_equal "b", list[1]
    assert_equal "c", list[2]

    list.pop
    assert_equal "a", list[0]
    assert_equal "b", list[1]
    assert_equal nil, list[2]

    list.pop
    assert_equal "a", list[0]
    assert_equal nil, list[1]
  end

  def test_unshift_adds_a_value_to_the_begining_of_a_list
    list = LinkedList.new

    list.unshift "a"
    assert_equal "a", list[0]
    assert_equal nil, list[1]

    list.unshift "b"
    assert_equal "b", list[0]
    assert_equal "a", list[1]
    assert_equal nil, list[2]
  end

  def test_shift_removes_a_value_from_the_front_of_a_list
    list = LinkedList.new

    list.push "a"
    list.push "b"
    list.push "c"
    assert_equal "a", list[0]
    assert_equal "b", list[1]
    assert_equal "c", list[2]

    list.shift
    assert_equal "b", list[0]
    assert_equal "c", list[1]
    assert_equal nil, list[2]

    list.shift
    assert_equal "c", list[0]
    assert_equal nil, list[1]
  end

  def test_if_shift_shovel_and_push_can_take_mulitple_args
    list = LinkedList.new

    list << "a" "b" "c"
    list.push "d" "e" "f"
    list.unshift "g" "h" "i"

    assert_equal "ghi", list[0]
    assert_equal "abc", list[1]
    assert_equal "def", list[2]
  end

  def test_shovels_in_succession_add_values
    list = LinkedList.new

    list << "a" << "b" << "c"

    assert_equal "a", list[0]
    assert_equal "b", list[1]
    assert_equal "c", list[2]

  end

end


