# as a traveller
# so that I can find a place to stay
# I want to see a list pf properties

feature 'list of properties' do
  scenario 'so that I can see a list of properties' do
    Listing.create(title: '1 bedroom flat', location: 'penge', price: '1', imageurl: 'a.com/pengeminge')
    visit '/listings'
    expect(page).to have_content("1 bedroom flat")
  end
end

feature 'can filter properties by location' do
scenario 'a user looks for properties in penge' do
    Listing.create(title:     '1 bedroom flat',
                   location:   'penge',
                   price:      '1',
                   imageurl:   'a.com/pengeminge')
    Listing.create(title:     'Townhouse',
                   location:  'London',
                   price:     '100',
                   imageurl:  'london.townhouse.com/image.png')
    visit '/listings/filter'
    fill_in 'filter_by_location', with: 'penge'
    click_button 'Submit'
    expect(page).to have_content('1 bedroom flat')
    expect(page).not_to have_content('Townhouse')
  end
end
