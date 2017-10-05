# as a traveller
# so that I can find a place to stay
# I want to see a list pf properties

feature 'list of properties' do
  scenario 'so that I can see a list of properties' do
    visit '/properties'
    expect(page).to have_content("1 bedroom flat")
  end
end
