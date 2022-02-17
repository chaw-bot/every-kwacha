require 'rails_helper'

RSpec.feature 'categories index page', js: true, type: :feature do
  background do
    visit user_session_path
    @user = User.create!(name: 'John Doe', email: 'john@mail.com', password: 'john123')

    fill_in 'Email', with: 'john@mail.com'
    fill_in 'Password', with: 'john123'
    click_button 'Log in'

    @category = @user.categories.create!(name: 'Food')

    @category.icon.attach(
      io: File.open(Rails.root.join('spec', 'fixtures', 'raggae.png')),
      filename: 'raggae.png',
      content_type: 'application/png'
    )
    @category.save!
    visit categories_path
  end

  it 'should see users categories' do
    expect(page).to have_content 'Food'
  end

  it 'should show total amount' do
    expect(page).to have_content 'Total: K 0'
  end

  it 'should have a "ADD A NEW CATEGORY" button' do
    expect(page).to have_content 'ADD A NEW CATEGORY'
  end
end
