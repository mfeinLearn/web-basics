#https://www.youtube.com/watch?time_continue=2530&v=LSUevS1PRTg
# time @ 42:10
class TwitterSearch
# search for all tweets that contains the word "someonetesting"
  def initialize(query)
    @query = query
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key             = ""
      config.consumer_secret          = ""
      config.access_token             = ""
      config.access_token_secret      = ""
    end
  end

  def tweets
     @client.search(@query).entries
  end

  # TwitterSearch.new("someonetesting").tweets #=>
  
  #1 TwitterSearch.new
  #2 creates a new instance of a TwitterSearch
  #3 saves the query in side of the object @query
  #4 connects to twitter
  #5 calls the #tweets method and takes that client connection to twitter(@client)
    # call the #search method on it
  #6 pass in the @query in to the search method then
    # calls entries on it
  #7 Will return the actual tweets
  #### This is called the model/ chef does not know about the web
  #### sinatra.
  # IT ONLY KNOWS HOW TO WRAP TWITTER GEM INTO SOMETHING CALLED: TwitterSearch
end
