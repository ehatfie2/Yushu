feature "User Plays their Story" do
    scenario "User successfully creates and deletes a new adventure" do
        visit new_adventure_path
        expect(page).to have_content("New Adventure")
        fill_in 'name', with: "My_Game"
        #page.choose("Storyline 1")
        #find('[name=story1]').click
        expect(page).to have_content("The Mystery of the Shadow Thief")
        click_button "Create Adventure"
        expect(page).to have_content("My_Game")
        expect(page).to have_content("The Mystery of the Shadow Thief")
        click_link "Play"
        expect(page).to have_content("Current Adventure")
        expect(page).to have_content("Your move")
        click_button "Enter"
        click_link 'Show'
        click_link "Delete Level"
        expect(page).to have_no_content('User Choice')
    end

    
    
end