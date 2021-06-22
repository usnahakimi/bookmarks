feature 'Viewing bookmarks' do 
    scenario 'user can view bookmarks' do
      visit('/bookmarks')
      expect(page).to have_content "http://www.google.com"
      expect(page).to have_content "http://www.bbc.co.uk"
      expect(page).to have_content "http://www.amazon.co.uk"
    end
end