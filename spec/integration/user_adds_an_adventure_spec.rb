require 'rails_helper.rb'

feature "User adds an adventure" do
    scenario "User successfully navigates to the new adventure page from the adventure index page" do
        visit adventures_path
        expect(page).to have_content("Saved Adventures")
        click_link "New Adventure"
        expect(page).to have_content("New Adventure")
        expect(page).to have_content("Enter a name for your new adventure!")
        #expect(page).to have_content("Name")
        expect(page).to have_field("Name") 
        expect(page).to have_content("Storyline")
    end
    scenario "User successfully creates a new adventure" do
        visit new_adventure_path
        expect(page).to have_content("New Adventure")
        fill_in "Name", with: "New Adventure"
        #choose('Storyline 1')
        expect(page).to have_content("Choose a storyline for your adventure")
        find('story1').click
        click_button "Create Adventure"
        expect(page).to have_content("New Adventure")
        expect(page).to have_content("Storyline 1")
    end
end

feature "User deletes an adventure" do
    scenario "User successfully creates a new adventure" do
        visit new_adventure_path
        expect(page).to have_content("New Adventure")
        fill_in "Name", with: "New Adventure"
        page.choose('Storyline 1')
        #find('[name=story1]').click
        click_button "Create Adventure"
        expect(page).to have_content("New Adventure")
        expect(page).to have_content("Storyline 1")
    end
    scenario "User succesfully deletes an adventure from the adventure index page" do
        visit adventures_path
        expect(page).to have_content("Saved Adventures")
        expect(page).to have_content("New Adventure")
        click_link "Delete"
        expect(page).to have_no_content('New Adventure')
    end
end
