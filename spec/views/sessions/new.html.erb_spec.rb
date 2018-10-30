require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do
  # pending "add some examples to (or delete) #{__FILE__}"

  # it should allow a username
  #  redisplay if no username given
  it 'will not go to the next screen, unless a username was entered' do
    expect(params[:name]).not_to be blank? 
  end
end
