require 'rails_helper'

  describe "sessions/new" do
    it "displays buttons for logging in and out" do
      visit sessions_new_path
      expect(page).to have_button('login')
      expect(page).to have_link('logout')
    end

    it "redirects and displays username if user is logged in" do
      visit sessions_new_path
      fill_in 'name', with: 'harley'
      click_button 'login'
      expect(page).to have_content ('Welcome harley')
    end

    it "redirects to login page if nothing is entered" do
      visit sessions_new_path
      fill_in 'name', with: ''
      click_button 'login'
      expect(page).to have_content ('Welcome!')
    end


  end

#
#   describe "GET /artists/id" do
#     it "links to artists song path" do
#       visit artist_path(@artist)
#       expect(page).to have_link(@song.title, href: artist_song_path(@artist, @song))
#     end
#   end
# end
