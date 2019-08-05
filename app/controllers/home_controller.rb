class HomeController < ApplicationController

    def test
      return render_userapps
    end

    def render_apps
      @apps = App.all 
      render json: @apps.to_json(only: [:id, :name, :description, :Color, :DefaultStatus, :Link])
    end 

    def render_users
      @users = User.all
      render json: @users.to_json(only: [:id, :login, :Password])
    end

    def render_userapps
      @userapps = UserApp.all
      render json: @userapps.to_json()
    end

    def get_apps
      @apps = App.all 
      return @apps
    end 

    def get_users
      @users = User.all
      return @users
    end

    def all_userapps
      @userapps = get_apps 
    end
end
