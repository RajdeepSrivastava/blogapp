class BlogappsController < ApplicationController

    def index
        @blogapps = Blogapp.all
    end

    def new

    end

    def view
        @blogapp = Blogapp.find(params[:id])
    end

    def create
        Blogapp.create(title:params[:title], body:params[:body], author_id:params[:author_id])
        redirect_to "blogapps"
    end

    def edit
        @blogapp = Blogapp.find(params[:id])
    end

    
    def update
        @blogapp = Blogapp.find(params[:id])
        @blogapp.update(title:params[:title], body:params[:body], author_id:params[:author_id])
        redirect_to "blogapp"
    end

    def destroy
        blogapp = Blogapp.find(params[:id])
        blogapp.destroy
        redirect_to "blogapps"
    end
end
