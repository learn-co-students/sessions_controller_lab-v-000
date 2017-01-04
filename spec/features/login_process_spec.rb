describe "the login process", :type => :feature do

  it "signs me in" do
    visit '/sessions/new'
    fill_in 'name', with: 'shaun'

    click_button 'login'
    expect(page).to have_content 'Hi, shaun.'
  end

  it "redirects me to login page with blank name" do 
    visit '/sessions/new'
    fill_in 'name', with: ''

    click_button 'login'
    expect(current_path).to eq(sessions_new_path)   
  end
end