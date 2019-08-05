class HomeController < ApplicationController
    def index
      @applications = Application.all 
      render json: @applications.to_json(only: [:name, :description, :Color, :DefaltStatus, :Link])
    #   @users = User.all
    #   render json: @users.to_json(only: [:login, :Password])
    end 
end
