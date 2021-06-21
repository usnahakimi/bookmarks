require './lib/bookmark.rb'

describe Bookmark do

    describe '.all' do
        it 'lists all bookmarks' do
            bookmarks = Bookmark.all
            expect(bookmarks).to include("http://www.google.com") 
            expect(bookmarks).to include("http://www.bbc.co.uk")
            expect(bookmarks).to include("http://www.amazon.co.uk")
        end
    end
end