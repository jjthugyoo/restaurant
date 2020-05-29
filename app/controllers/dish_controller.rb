class DishController < ApplicationController
    before_action :require_login

    def index
        @dishes = Dish.all
    end

    def new
        @dish = Dish.new
    end
    
    def show
        redirect_to dish_path
    end

    def create
        @dish = Dish.new(dish_params)
        if(@dish.save)
            redirect_to :root
        else
            render 'new'
        end
    end

    def edit
        @dish= Dish.find(params[:id])
    end

    def update
        @dish = Dish.find(params[:id])
        if(@dish.update(dish_params))
            redirect_to dish_index_path
        else
            render 'edit'
        end
    end

    private def dish_params
        params.require(:dish).permit(:name,  :price, :description)
    end
    
end
