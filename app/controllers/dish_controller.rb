class DishController < ApplicationController
    before_action :require_login

    def index
        redirect_to new_dish_path
    end

    def new
        @dish = Dish.new
    end

    def create
        @dish = Dish.new(dish_params)
        if(@dish.save)
            redirect_to :root
        else
            render 'new'
        end
    end

    private def dish_params
        params.require(:dish).permit(:name,  :price, :description)
    end
    
end
