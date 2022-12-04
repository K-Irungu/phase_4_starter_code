class DevelopersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def index
        render json: Developer.all, status: :ok
    end

    def show
        developer = Developer.find(params[:id])
        render json: developer, status: :ok
    end

    private
    def record_not_found
        render json: { error: "Developer not found" }, status: :not_found
    end
end
