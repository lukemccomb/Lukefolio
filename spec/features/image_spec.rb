require 'rails_helper'

feature "images appear when logged in" do
  scenario "user can click thumbnail to view image show page" do
    create_user
    image = create_image
    login_user
    find('.single-image').click
    expect(page).to have_content(image.title)
    expect(page).to have_content(image.keywords)
  end
end