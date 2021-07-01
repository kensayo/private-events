require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    params = { email: 'test@test.com', username: 'test', password: '123456' }
    @user = User.new(params).save
    @empty_email = User.new(params.merge(email: nil))
    @empty_username = User.new(params.merge(username: nil))
    @empty_password = User.new(params.merge(password: nil))
    @invalid_email = User.new(params.merge(email: 'invalid'))
    @invalid_password = User.new(params.merge(password: '1234'))
  end

  context 'Validations' do
    it 'new user' do
      expect(@user).to be true
    end
  end
end