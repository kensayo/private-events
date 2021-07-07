require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    params = { email: 'test@test.com', username: 'test', password: '123456' }
    @empty_email = User.new(params.merge(email: nil)).save
    @empty_username = User.new(params.merge(username: nil)).save
    @empty_password = User.new(params.merge(password: nil)).save
    @invalid_password = User.new(params.merge(password: '1234')).save
  end

  context 'Validations' do
    it 'with empty email' do
      expect(@empty_email).to be false
    end
    it 'with empty username' do
      expect(@empty_email).to be false
    end
    it 'with empty password' do
      expect(@empty_email).to be false
    end
    it 'with empty email' do
      expect(@empty_email).to be false
    end
    it 'with invalid password' do
      expect(@empty_email).to be false
    end
  end

  context 'Associations' do
    it 'should have many attendances' do
      t = Event.reflect_on_association(:attendances)
      expect(t.macro).to eq(:has_many)
    end
  end
end
