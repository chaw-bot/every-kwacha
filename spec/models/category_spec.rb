require 'rails_helper'

RSpec.feature Category, type: :model do
  background do
    @user = User.create!(name: 'John Doe', email: 'john@mail.com', password: 'john123')

    @category = @user.categories.create!(name: 'Food')

    @category.icon.attach(
      io: File.open(Rails.root.join('spec', 'fixtures', 'raggae.png')),
      filename: 'raggae.png',
      content_type: 'application/png'
    )
    @category.save!
  end

  it 'should be valid' do
    expect(@category).to be_valid
  end

  it 'should have a name and an icon' do
    @category.name = ''

    expect(@category).to_not be_valid
  end
end
