require 'rails_helper'

RSpec.describe 'Login features', js: true do
  it 'should have email & password inputs, and a "Log in" button' do
    visit new_user_session_path
    expect(page).to have_field('Email', type: 'email')
    expect(page).to have_field('Password', type: 'password')
    expect(page).to have_button('Log in', type: 'submit')
  end

  it 'should get an error if either email or password fields are empty' do
    visit new_user_session_path
    fill_in 'Email', with: ''
    fill_in 'Password', with: ''
    click_button 'Log in'
    expect(page).to have_content('Invalid Email or password.')
  end

  it 'should get an error if either email or password fields are incorrect' do
    visit new_user_session_path
    fill_in 'Email', with: 'wel@mail.com'
    fill_in 'Password', with: 'tiuoipoi'
    click_button 'Log in'
    expect(page).to have_content('Invalid Email or password.')
  end

  it 'should redirect to root page when user logs in' do
    visit new_user_session_path
    fill_in 'Email', with: 'john@mail.com'
    fill_in 'Password', with: 'john123'
    click_button 'Log in'
    expect(current_path).to have_content('/users')
  end
end
