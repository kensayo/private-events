require 'rails_helper'

RSpec.feature 'Events', type: :feature do
  before(:each) do
    visit new_user_registration_url
    within('form') do
      fill_in 'user[password]', with: '123456'
      fill_in 'user[password_confirmation]', with: '123456'
      fill_in 'user[username]', with: 'test'
      fill_in 'user[email]', with: 'email@test.com'
    end
    click_on('Sign up')
  end

  before(:each) do
    visit new_event_path
    within('form') do
      fill_in 'event[name]', with: 'Test Event'
      fill_in 'event[description]', with: 'Description of test event'
      fill_in 'event[date]', with: '24/09/2021'
    end
    click_on('Save Event')
  end

  context 'After Sign Up' do
    scenario 'Successful' do
      visit root_path
      expect(page).to have_content("Test's Events")
    end
    scenario 'On event create' do
      visit new_event_path
      within('form') do
        fill_in 'event[name]', with: 'Test Event'
        fill_in 'event[description]', with: 'Description of test event'
        fill_in 'event[date]', with: '24/09/2021'
      end
      click_on('Save Event')
      expect(page).to have_content('Test Event')
    end
    scenario 'On event attend' do
      visit event_path(1)
      find('#attend').click
      expect(page).to have_selector('#notattend')
    end
  end
end
