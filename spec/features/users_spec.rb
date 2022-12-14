require 'rails_helper'

RSpec.describe "Users actions", type: :feature do
  describe "/users" do
    before do
      
      visit '/users'
    end
    it "finds content the page" do
      expect(page).to have_content("Merlin")
      expect(page).to have_content("2020-09-30")
      expect(page).to have_content("Active")
      expect(page).to have_content("juliusjohns@mcclure.net")
      expect(page).to have_link('Previous Page')
      expect(page).to have_link('Next Page')
    end
  end

  describe "/users/:id" do
    before do
      visit '/users/1'
    end

    it "finds user name on the page" do
      expect(page).to have_content("Merlin")
      expect(page).to have_content("2020-09-30")
      expect(page).to have_content("Active")
      expect(page).to have_content("juliusjohns@mcclure.net")
    end
  end
end
