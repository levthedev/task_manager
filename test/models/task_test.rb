require_relative '../test_helper'

class TaskTest < Minitest::Test
  def test_it_correctly_assigns_attributes
    data = {  :title        => "a title",
              :description  => "a description",
              :id           => 1 }

    task = Task.new(data)

    assert_equal "a title", task.title
    assert_equal "a description", task.description
    assert_equal 1, task.id
  end
end
