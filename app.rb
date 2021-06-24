require 'sinatra/base'
require_relative './lib/bookmark'

class BookmarkManager < Sinatra::Base

    get '/' do
        "Hello World!"
    end

    get '/bookmarks' do
        @bookmarks = Bookmark.all
        erb :bookmarks
    end

    get '/new' do
        erb :new
    end

    post '/bookmarks' do
        Bookmark.create(url: params[:url])
        redirect '/bookmarks'
    end

    run! if app_file == $0
end
