class DishController < ApplicationController
    before_action :require_login

    def index
    end

    def new
    end

    def create
        @dish = Dish.new(dish_params)
        @dish.save
        redirect_to :root
    end

    private def dish_params
        params.require(:dish).permit(:name,  :price, :description)
    end
    
end
