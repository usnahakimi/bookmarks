feature 'Viewing bookmarks' do 
    scenario 'user can view bookmarks' do
      visit('/bookmarks')
      expect(page).to have_content "http://wwww.google.com"
      expect(page).to have_content "http://wwww.bbc.co.uk"
      expect(page).to have_content "http://wwww.amazon.co.uk"
    end
end