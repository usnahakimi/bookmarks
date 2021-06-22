require 'pg'

feature 'Viewing bookmarks' do 
    scenario 'user can view bookmarks' do
      conn = PG.connect(dbname: 'bookmark_manager_test')

      conn.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.amazon.com');")

      visit('/bookmarks')

      expect(page).to have_content "http://www.amazon.com"
      expect(page).to have_content "http://www.destroyallsoftware.com"
      expect(page).to have_content "http://www.makersacademy.com"
    end
end