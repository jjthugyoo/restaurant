class CustomerController < ApplicationController
    def index
        @dishes = Dish.all
    end
end
