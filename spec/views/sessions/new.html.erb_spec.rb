require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do
  #pending "add some examples to (or delete) #{__FILE__}"
  before do
    visit new_session_path
    fill_in "name", with: "Goldie"
    click_button "login"
  end

end
