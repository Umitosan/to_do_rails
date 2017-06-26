require 'rails_helper'

describe "the delete a list process" do
  it "deletes a list" do
    visit lists_path
    click_link 'Add a new list'
    fill_in 'Name', :with => 'Home stuff'
    click_on 'Create List'
    click_link 'Home stuff'
    click_link 'Add a task'
    fill_in 'Description', :with => 'Eat it up!'
    click_on 'Create Task'
    click_link 'Delete'
    expect(page).to have_no_content('Eat it up!')
  end

end
