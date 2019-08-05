
class ApplicationsController < ApplicationController
    respond_to :json 
    # ... stuff ...
     
    def index
      @applications = Application.all 
      render json: @users.to_json(only: [:name, :email, :phone])
    end 
     
    def show
      @application = Application.find(params[:id])
      render json: @user.to_json(only: [:name, :email, :phone])
    end 
     
    # ... stuff ...
    end