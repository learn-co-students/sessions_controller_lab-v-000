describe "user is logged in", type: :feature do

  before do
    visit login_path
    fill_in "name", with: "Dill"
    click_button "login"
  end

  let(:user) { session[:name] }

  describe "GET /" do
    it "greets the user and provides a logout link" do
      visit root_path
      expect(page).to have_selector "input[type='submit']"
    end
  end

end
