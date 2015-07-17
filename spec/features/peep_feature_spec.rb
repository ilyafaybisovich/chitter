require 'rails_helper'

feature 'showing peeps' do
  context 'before any peeps have been peeped' do
    scenario 'produces an informative notice and invites to add a peep' do
      visit '/peeps'
      expect(page).to have_content 'No peeps peeped yet. Be the first!'
      expect(page).to have_link 'Add a peep'
    end
  end 
end