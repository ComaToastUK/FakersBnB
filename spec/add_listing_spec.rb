feature 'Add listing' do
  scenario 'User can add a listing' do
    visit 'listings/new'
    fill_in 'title', with: "Will's House"
    fill_in 'price', with: 100
    fill_in 'location', with: 'Somewhere'
    fill_in 'imageurl', with: 'https://wallpaperscraft.com/image/structure_hut_grass_herbs_summer_63178_2560x1600.jpg'
    click_button 'Add Listing'
    expect(page.status_code).to eq 200

  # Once view listings feature is created:
    # expect(current_path).to eq('/listings')
    # within 'ul#listings' do
    #   expect(page).to have_content('Will\'s House')
    #   expect(page).to have_content(100)
    #   expect(page).to have_content('Somewhere')
    #   expect(page).to have_content('https://wallpaperscraft.com/image/structure_hut_grass_herbs_summer_63178_2560x1600.jpg')
    # end
  end
end
