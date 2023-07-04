class CupsController < ApplicationController

    protect_from_forgery with: :exception
    before_action :authorize, only: [:show, :edit, :update, :destroy]

    # ----- add these lines here: -----

    def index
        @cups = Cup.all
    end

    def show
        @cup = Cup.find(params[:id])
    end

    def new
        @cup = Cup.new
    end

    def create
        @cup = Cup.new(cup_params)
        result = @cup.save
        if result
            flash[:notice] = "Cup created successfully!"
            redirect_to root_path
        else
            if @user.errors.any?
                @user.errors.full_messages.each do |message|
                puts message
                end
            end
            flash.now.alert = "Oops, couldn't create cup."
            render :new
        end
    end

    def edit
        @cup = Cup.find(params[:id])
    end

    def update
        @cup = Cup.find(params[:id])

        if @cup.update(cup_params)
            redirect_to @cup, notice: 'Cup was successfully updated.'
        else
            render :edit
        end
    end

    def destroy
        @cup = User.find(params[:id])
        @cup.destroy
        redirect_to cups_url, notice: 'Cup was successfully destroyed.'
    end

    private

    def cup_params
        parsed_params = params.require(:cup).permit(:name, :start_date, :end_date, :field,
            :number_of_players, :state, :away_goal, :min_number_of_participants,
            :max_number_of_participants)
    end    
end
