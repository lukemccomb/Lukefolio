require 'rails_helper'

feature 'Homepage' do
  scenario 'Anonymous can visit homepage and see Lukefolio and click links' do
    visit '/'
    expect(page).to have_content('LUKEFOLIO')
    find('.question_logo', :text => '?').click
    expect(page).to have_content("Lukefolio will soon be searchable database of my images.")
    find('.menu_logo').click
    expect(page).to have_content("SEARCH COLLECTIONS CART")
  end
end