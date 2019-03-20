require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/game')
also_reload('./models/*')

get "/" do
  erb(:home)
end

get "/:rock" do


  erb(:rock)
end

get "/:player1/:player2" do
  @win = winner_model(player1,player2)

  erb(:main_page)
end
