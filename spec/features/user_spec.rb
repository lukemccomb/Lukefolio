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

  scenario 'anonymous user can register and log in' do
    visit '/'
    click_on 'Register'
    find('.register-form').fill_in 'Email', with: 'user@example.com'
    find('.register-form').fill_in 'Password', with: 'password'
    click_button 'Register'
  #   expect page to have flash message "Thank you for registering"
    find('.login').click
    find('.signin-form').fill_in 'Email', with: 'user@example.com'
    find('.signin-form').fill_in 'Password', with: 'password'
    click_button 'Login'
    expect(page).to have_content("Log Out")

  end
end