class ItemController < ApplicationController
    before_action :require_login

    def index
        @items = Item.all
    end

    def new
        @item = Item.new
    end

    def show
        @items = Item.find(params[:id])
    end

    def create
        @item = Item.new(item_params)
        if(@item.save)
            redirect_to @item
        else
            render 'new'
        end
    end

    def edit
        @item = Item.find(params[:id])
    end

    def update
        @item = Item.find(params[:id])
        if(@item.update(item_params))
            redirect_to @item
        else
            render 'edit'
        end
    end

    private def item_params
        params.require(:item).permit(:name,  :qty, :price)
    end
end
