class CategorysController < ApplicationController
    layout "dashboard"
    before_action :set_category, except: [:index, :create]

    def index
        @categories = Category.all
    end

    def new
    end

    def create
        @category = Category.create(category_params)
        if @category.errors.size == 0 
            redirect_to @category
        else
            render "new"
        end
    end

    def edit
    end

    def update
        @category.update(category_params)
        redirect_to category_path(@category)
    end

    def show
        
    end

    def destroy
        @category.destroy
        redirect_to categorys_path
    end


    private
        def category_params
            params.require(:category).permit(:name)
        end

        def set_category
            @category = params[:id].present? ? Category.find(params[:id]) : Category.new
        end
end
