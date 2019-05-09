1. A home page or root route.
   * If the user is not logged in, the page should show them a login link.
   * If the user is logged in, the page should say, "hi, #{name}", and provide a
   logout link.
2. A login page
   * Users can enter their name in a form and click 'login'. Thereafter, the app will
   refer to them by that name.
   * If the user does not enter a name, they are not logged in. Return them to the
   login page.

  -----------------------------------------------------------------------
   feature 'Add A Movie' do
    scenario 'able to create a book' do
      - 1. Go to the root route and find a button to "Add Movie"
      visit '/'
      - 2. Go click on the "Add Movie" button
      click_link 'Add Movie'
      - 3. Fill in the movie form inputs release year and title
        fill_in 'movie_title', with: 'Jurassic Park'
        fill_in 'movie_release_year', with: 1993
      - 4. Click on the "Create Movie" submit button
        click_button 'Create Movie'
      - 5. Redirect me to the movie's show page with details about the
      movie's title and release year
      expect(page).to have_content('Jurassic Park')
      expect(page).to have_content(1993)
    end
   end
-----------------------------------------------------------------------







   feature 'Show Movie Collection' do
    scenario 'will show the movies on the page' do
      Movie.create(title: 'Jurassic Park', release_year: 1993)
      Movie.create(title: 'Harry Potter', release_year: 2000)

      visit '/'
      click_link 'Movies'
      expect(page).to have_content('Jurassic Park')
      expect(page).to have_content('Harry Potter')
    end
   end
