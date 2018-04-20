require 'rails_helper.rb'

feature "User adds an adventure" do
    scenario "User successfully navigates to the new adventure page from the adventure index page" do
        visit adventures_path
        expect(page).to have_content("Saved Adventures")
        click_link "New Adventure"
        expect(page).to have_content("New Adventure")
        expect(page).to have_content("Enter a name for your new adventure!")
        expect(page).to have_content("Name")
        #expect(page).to have_field("Name")
        expect(page).to have_content("Storyline")
    end
end