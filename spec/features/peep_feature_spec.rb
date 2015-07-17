require 'rails_helper'

feature 'showing peeps' do
  context 'before any peeps have been peeped' do
    scenario 'produces an informative notice and invites to add a peep' do
      visit '/peeps'
      expect(page).to have_content 'No peeps peeped yet. Be the first!'
      expect(page).to have_link 'Add a peep'
    end
  end 

  context 'after peeps have been created' do
    before do
        Peep.create text: 'This is the first ever peep!'
    end

    scenario 'showing one peep' do
      visit root_path
      expect(page).to have_content 'This is the first ever peep'
    end
  end
end