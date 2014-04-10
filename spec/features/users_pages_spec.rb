require 'spec_helper'

describe User do
  context 'creating' do
    it 'lets the user view the New page' do
      visit new_user_path
      page.should have_content "Password confirmation"
    end

    it 'lets the user create a new login' do
      visit new_user_path
      user = FactoryGirl.build :user
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password_digest
      fill_in 'Password confirmation', with: user.password_digest
      click_button 'Sign Up'
      page.should have_content "It's an index"
    end
  end

  context 'logging in and out' do
    it 'lets an existing user login' do
      visit root_url
      user = FactoryGirl.create :user
      click_link 'Log In'
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Log In'
      page.should have_content "Logged in!"
    end

    it 'lets an existing user logout' do
      visit root_url
      user = FactoryGirl.create :user
      click_link 'Log In'
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Log In'
      click_link 'Log Out'
      page.should have_content "Logged out!"
    end
  end
end
