class ApplicationController < Sinatra::Base

  get '/' do # Route GET '/' root
    "Hello World"
  end

  get '/twitter' do # Route
    # Action
    @tweets = TwitterSearch.new("someonetesting").tweets

    erb :"twitter.html"
  end

end
