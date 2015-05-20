require_relative '../test_helper'

class CreateNewTaskTest < FeatureTest
  def create_task
    visit '/tasks/new'
    fill_in 'task[title]', :with => 'title'
    fill_in 'task[description]', :with => 'description'
    click_button 'Submit'
  end

  def test_user_can_edit_task
    create_task

    visit '/tasks/1/edit'
    fill_in 'task[title]', :with => 'new title'
    fill_in 'task[description]', :with => 'new description'
    click_button 'update task'
    visit '/tasks'

    assert page.has_content? 'new title'
  end
end