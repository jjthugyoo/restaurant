class WorkerController < ApplicationController
    before_action :require_login

    def index
        @workers = Worker.all
    end

    def new
        @worker = Worker.new
    end

    def show
        @workers = Worker.find(params[:id])
    end

    def create
        @worker = Worker.new(worker_params)
        if(@worker.save)
            redirect_to @worker
        else
            render 'new'
        end
    end

    private def worker_params
        params.require(:worker).permit(:name,  :age, :address, :gender, :role, :wage)
    end
end
