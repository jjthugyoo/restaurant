class ItemController < ApplicationController
    before_action :require_login

    def index
        @items = Item.all
    end

    def new
    end

    def show
        @items = Item.find(params[:id])
    end

    def create
        @item = Item.new(item_params)
        @item.save
        redirect_to @item
    end

    private def item_params
        params.require(:item).permit(:name,  :qty, :price)
    end
end
