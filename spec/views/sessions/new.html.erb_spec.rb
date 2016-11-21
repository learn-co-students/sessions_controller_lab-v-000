require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do
  it "has a field username" do
    render :template => "sessions/new.html.erb"
    # expect(page).to have_content("name")
  end
end
