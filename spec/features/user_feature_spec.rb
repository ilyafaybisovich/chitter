require 'rails_helper'

feature 'user can sign up, sign in and log out' do
  context 'user is not signed in' do
    scenario 'sees the sign up and sign in links on the homepage' do
      visit root_path
      expect(page).to have_link 'Sign up'
      expect(page).to have_link 'Sign in'
    end

    scenario 'does not see the log out link on the homepage' do
      visit root_path
      expect(page).not_to have_link 'Log out'
    end
  end

  context 'user is signed in' do
    before do
      visit root_path
      click_link 'Sign up'
      fill_in 'Email', with: "test@test.com"
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'
      click_button 'Sign up'
    end

    scenario 'does not see the sign up and sign in links on the homepage' do
      visit root_path
      expect(page).not_to have_link 'Sign up'
      expect(page).not_to have_link 'Sign in'
    end

    scenario 'sees the log out link on the homepage' do
      visit root_path
      expect(page).to have_link 'Log out'
    end
  end
end