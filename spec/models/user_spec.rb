require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'John Doe', email: 'john@mail.com', password: '123456') }

  before { subject.save }

  it 'should validate user' do
    expect(subject).to be_valid
    subject.name = ''
    expect(subject).to_not be_valid
  end
end
