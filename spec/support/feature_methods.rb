def login_user
  user = create_user(password: "password")
  visit '/'
  find('.login').click
  find('.signin-form').fill_in 'Email', with: user.email
  find('.signin-form').fill_in 'Password', with: user.password
  click_button 'Login'
end