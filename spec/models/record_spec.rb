require 'rails_helper'

RSpec.describe Record, type: :model do
  subject do
    user = User.new(name: 'John Doe', email: 'john@mail.com', password: '123456')
    Record.new(name: 'Galaxy Watch', amount: 250, user: user)
  end

  before { subject.save }

  it 'should be valid' do
    expect(subject).to be_valid
  end

  it 'should have a name and an amount' do
    subject.name = ''
    subject.amount = nil

    expect(subject).to_not be_valid
  end
end
