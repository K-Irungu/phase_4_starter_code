class ManagersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found


    def index 
        render json: Manager.all, status: :ok
    end

    def show
        manager = Manger.find(params[:id])
        render json: manager, status: :ok
    end

    private
    def record_not_found
        render json: { error: "Manager not found" }, status: :not_found
    end
end
