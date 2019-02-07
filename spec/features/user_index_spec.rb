require 'rails_helper'

describe 'When a visitor visits the user index page', type: :feature do
  describe 'they can click a link to create a user' do
    it 'which will take them to a form where they can input user information' do
      visit users_path

      click_link 'Create User'

      fill_in 'user[name]', with: 'John Smith'
      fill_in 'user[email]', with: 'johnsmith@gmail.com'
      fill_in 'user[password]', with: 'abc123'
      click_on 'Create User'

      expect(page).to have_content('John Smith')

      click_link 'Create User'

      fill_in 'user[name]', with: 'Bill Jones'
      fill_in 'user[email]', with: 'johnsmith@gmail.com'
      fill_in 'user[password]', with: 'abc123'
      click_on 'Create User'

      expect(page).to_not have_content('Bill Jones')
    end
  end
end
