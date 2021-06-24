require 'pg'
require './lib/bookmark'

feature 'Viewing bookmarks' do 
    scenario 'user can view bookmarks' do

      Bookmark.create(url: "http://www.makersacademy.com")
      Bookmark.create(url: "http://www.destroyallsoftware.com")
      Bookmark.create(url: "http://www.amazon.com")

      visit('/bookmarks')

      expect(page).to have_content "http://www.amazon.com"
      expect(page).to have_content "http://www.destroyallsoftware.com"
      expect(page).to have_content "http://www.makersacademy.com"
    end
end