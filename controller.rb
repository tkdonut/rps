require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('models/rps_model.rb')
also_reload('./models/*')

get '/rps/:hand1/:hand2' do
@hand1 = params[:hand1]
@hand2 = params[:hand2]
outcome = RPSGame.check_win(@hand1, @hand2)
return outcome
end
