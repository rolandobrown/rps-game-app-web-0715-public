require_relative 'config/environment'

class GameApp < Sinatra::Base
  get '/rps/:play' do

    # game = RPSGame.new((params['play']).to_sym)
    #   @play = game.item
    #   @computer_play = game.computer_play
    #   @result = game.game_status

    erb :rps_game
  end
end
