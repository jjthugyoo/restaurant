class DishController < ApplicationController
    before_action :require_login

    def index
    end

    def create
        render plain:  params[:dish].inspect
    end

    def new
    end
end
