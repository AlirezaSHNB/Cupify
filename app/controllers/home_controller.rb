class HomeController < ApplicationController
    protect_from_forgery with: :exception
    before_action :authorize, only: [:show, :edit, :update, :destroy]

    def index
        @cups = Cup.all.limit(10)
        @teams = Participant.multiple_players.limit(10)
        @persons = Participant.single_players.limit(10)
        @players = Player.all.limit(10)
    end
end
