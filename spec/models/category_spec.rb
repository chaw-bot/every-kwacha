require 'rails_helper'

RSpec.describe Category, type: :model do
  subject do
    user = User.new(name: 'John Doe', email: 'john@mail.com', password: '123456')
    Category.new(name: 'Accesories', icon: 'a logo', user: user)
  end

  before { subject.save }

  it 'should be valid' do
    expect(subject).to be_valid
  end

  it 'should have a name and an icon' do
    subject.name = ''
    subject.icon = ''

    expect(subject).to_not be_valid
  end
end
