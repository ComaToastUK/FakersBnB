feature "I can sign up for FakersBnB" do
  scenario "sign up as new user" do
    expect { sign_up }.to change(User, :count).by(1)
    expect(User.first.email).to eq('trump@usa.com')
  end
end
