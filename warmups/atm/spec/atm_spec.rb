require 'spec_helper'

feature 'atm' do
  scenario 'should startup with a welcome screen' do
    visit "/"
    expect(page).to have_content('Welcome to Deb & Tom Credit Union')

  end
end