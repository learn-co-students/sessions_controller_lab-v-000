describe "user is logged in", type: :feature do

  before do
    visit login
    fill_in "name", with: "Dill"
    click_button "login"
  end

  let(:user) { session[:name] }

  describe "GET /" do
    it "greets the user and provides a logout link" do
      visit root
      expect(page).to have_content 
    end
  end

end
