require 'rails_helper.rb'

feature "User deletes an adventure" do
    scenario "User successfully creates a new adventure" do
        visit new_adventure_path
        expect(page).to have_content("New Adventure")
        fill_in "Name", with: "My_Game"
        #page.choose("Storyline 1")
        #find('[name=story1]').click
        expect(page).to have_content("Storyline 1")
        click_button "Create Adventure"
        expect(page).to have_content("My_Game")
        expect(page).to have_content("Storyline 1")
    end
    scenario "User succesfully deletes an adventure from the adventure index page" do
        visit adventures_path
        expect(page).to have_content("Saved Adventures")
        expect(page).to have_content("New Adventure")
       # find('tr', text: 'My Game' ).click_link("Delete")
       find(:adventures, "//tr[td[contains(.,'My_Game')]]/td/a", :text => 'Delete').click
        expect(page).to have_no_content('New Adventure')
    end
end
