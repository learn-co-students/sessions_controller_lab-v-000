require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do
  it "welcomes a user" do
    render
    expect(rendered).to include("Hello!")
  end

  it "gives some basic direction" do
    render
    expect(rendered).to include("Log in with your name")
  end

  it "has a form" do
    render
    expect(rendered).to include("</form>")
  end
end
