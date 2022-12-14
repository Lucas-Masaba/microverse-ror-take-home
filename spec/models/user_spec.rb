require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(api_id: 11,
             first_name: 'Bobby',
             last_name: 'Shmurda',
             status: 'Active',
             created_at: '2022-02-02',
             email: 'shmurda@gmail.com')
  end

  before { subject.save }

  it 'subject should be valid' do
    expect(subject).to be_valid
  end
end
