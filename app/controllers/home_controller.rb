class HomeController < ApplicationController
    def index
      @apps = App.all 
      render json: @apps.to_json(only: [:name, :description, :Color, :DefaultStatus, :Link])
    #   @users = User.all
    #   render json: @users.to_json(only: [:login, :Password])
    end 
end
