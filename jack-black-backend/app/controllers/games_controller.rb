class GamesController < ApplicationController

    def index 
        games = Game.all 
        render json: GameSerializer.new(games)
    end 

    def show 
        game = Game.find_by(id: params[:id]) 
        render json: GameSerializer.new(game)
    end 

end
