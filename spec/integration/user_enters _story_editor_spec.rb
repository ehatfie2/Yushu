require 'rails_helper.rb'

feature "User Plays their Story" do
    scenario "User successfully creates a new adventure" do
        visit new_adventure_path
        expect(page).to have_content("New Adventure")
        fill_in 'name', with: "My_Game"
        #page.choose("Storyline 1")
        #find('[name=story1]').click
        expect(page).to have_content("Storyline 1")
        click_button "Create Adventure"
        expect(page).to have_content("My_Game")
        expect(page).to have_content("Storyline 1")
        click_link "Play"
        expect(page).to have_content("Current Adventure")
        expect(page).to have_content("Your move")
        click_button "Create Level"              #WILL CHANGE !!!
        click_link "Delete"
    end

    
    
end