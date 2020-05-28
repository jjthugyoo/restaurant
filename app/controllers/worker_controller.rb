class WorkerController < ApplicationController
    before_action :require_login

    def index
        @workers = Worker.all
    end

    def new
    end

    def show
        @workers = Worker.find(params[:id])
    end

    def create
        @worker = Worker.new(worker_params)
        @worker.save
        redirect_to @worker
    end

    private def worker_params
        params.require(:worker).permit(:name,  :age, :address, :gender, :role, :wage)
    end
end
