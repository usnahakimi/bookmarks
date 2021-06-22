require './lib/bookmark.rb'

describe Bookmark do

    describe '.all' do
        it 'lists all bookmarks' do
            conn = PG.connect(dbname: 'bookmark_manager_test')

            conn.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
            conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
            conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.amazon.com');")
            
            bookmarks = Bookmark.all
            
            expect(bookmarks).to include("http://www.amazon.com")
            expect(bookmarks).to include("http://www.destroyallsoftware.com")
            expect(bookmarks).to include("http://www.makersacademy.com")
        end
    end
end
