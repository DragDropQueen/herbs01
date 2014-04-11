require 'spec_helper'
require_relative '../herbs_app'

Capybara.app = HerbsApp

feature "Herbs" do
  scenario "User can add and see herbs" do
    visit '/'
    expect(page).to have_no_content("nettles")
    fill_in "Herb Name", with: "nettles"
    click_on "Collect"
    expect(page).to have_content("nettles")

  end
end