require 'rails_helper'

RSpec.describe User, type: :feature do
  feature "Create" do
    scenario "new user and update" do
      visit '/users/new'
      fill_in 'Name', :with => 'Xunda'
      click_button 'Create User'
      expect(page).to have_content 'User was successfully created.'
      user = User.last
      click_link user.token.last(4)
      click_link 'Edit'
      fill_in 'Name', :with => 'Capybot'
      click_button 'Update User'
      expect(page).to have_content 'User was successfully updated.'
    end
  end
end
