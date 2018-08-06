require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do
  before do
    session.delete :name
  end

  # if the user is not logged in, the page should show them a login link.
  it "shows a login link if user is not logged in" do
    render
    expect(render).to include('login')
  end

end
