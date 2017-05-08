require 'rails_helper'

RSpec.describe 'application/hello', :type => :view do
  # before do
  #   Artist.destroy_all
  #   Song.destroy_all
  #   @song = Song.create(title: "Bullet the Blue Sky", artist_name: "U2")
  #   allow(view).to receive(:display_artist).and_return("They Might Be Giants")
  #   assign(:songs, Song.all)
  # end
  #
  # it 'calls the helper to display the artist' do
  #   render
  #   expect(rendered).to match /They Might Be Giants/
  # end

  it "shows login link if not logged in" do
    session[:name] = nil
    render :template => 'application/hello.html.erb'
    expect(rendered).to include '/login'
  end

  it "welcomes user by name if logged in" do
    session[:name] = 'mike'
    render
    expect(rendered).to include "Hi, mike"
  end
end
