require 'rails_helper'

RSpec.describe 'sessions/create' do
  it "should be successful" do
    render
    expect(response).to render_template("create")
  end
  
end