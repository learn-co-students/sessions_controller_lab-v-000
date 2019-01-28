require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do

  it "shows login field and login button" do
    render :template => 'sessions/new'
    expect(rendered).to include "login"
  end
end
