require 'rails_helper'

RSpec.describe Event, type: :model do
  before(:all) do
    params = { name: 'test event', date: Date.today, description: 'test description of the event' }
    @event = Event.new(params)
    @no_name = Event.new(params.merge(name: nil)).save
    @no_description = Event.new(params.merge(description: nil)).save
    @no_date = Event.new(params.merge(date: nil)).save
  end

  context 'Validations' do
    it 'ensure title presence' do
      expect(@no_name).to be false
    end

    it 'ensure description presence' do
      expect(@no_description).to be false
    end

    it 'ensure date presence' do
      expect(@no_date).to be false
    end
  end

  context 'Associations' do
    it "should have many attendances" do
      t = Event.reflect_on_association(:attendances)
      expect(t.macro).to eq(:has_many)
    end
    it "should have many attendances" do
      t = Event.reflect_on_association(:user)
      expect(t.macro).to eq(:belongs_to)
    end
  end
end