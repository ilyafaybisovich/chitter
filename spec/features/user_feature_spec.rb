require 'rails_helper'

feature 'user can sign up, sign in and log out' do
  context 'user is not signed in' do
    xscenario 'sees the sign up and sign in links on the homepage' do
      visit root_path
      expect(page).to have_link 'Sign up'
      expect(page).to have_link 'Sign in'
    end

    xscenario 'does not see the log out link on the homepage' do
      visit root_path
      expect(page).not_to have_link 'Log out'
    end
  end

  context 'user is signed in' do
    xscenario 'does not see the sign up and sign in links on the homepage' do
      visit root_path
      expect(page).not_to have_link 'Sign up'
      expect(page).not_to have_link 'Sign in'
    end

    xscenario 'sees the log out link on the homepage' do
      visit root_path
      expect(page).to have_link 'Log out'
    end
  end
end