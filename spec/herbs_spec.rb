require 'spec_helper'
require_relative '../herbs_app'

Capybara.app = HerbsApp

feature "Herbs" do

  before do
    DB[:herbs].delete
  end

  scenario "User can add and see herbs" do
    visit '/'
    test_herb = "nettles"
    test_herb_part = "leaf"
    expect(page).to have_no_content(test_herb)
    expect(page).to have_no_content(test_herb_part)
    fill_in "Herb Name", with: test_herb
    fill_in "Plant Part", with: test_herb_part
    click_on "Collect"
    expect(page).to have_content(test_herb)
    expect(page).to have_content(test_herb_part)
  end
end