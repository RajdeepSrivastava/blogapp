class BlogappsController < ApplicationController

    def index
        @blogapps = Blogapp.all
    end

    def new; end

    def view
        @blogapp = Blogapp.find(params[:id])
        @blogapp.increment!(:views)
        render :view
    end

    def create
      
        
        @blogapp = Blogapp.new(blogapp_params)
            if @blogapp.save
                flash[:notice] = "Great! your Blog is Created"
                redirect_to "/blogapps"
            else
                flash[:alert] = "Oops!, There is some Error"
                render :new , status: :unprocessable_entity
            end
        # Blogapp.create(title:params[:title], body:params[:body], author_id:params[:author_id])

        # redirect_to '/blogapps'
    end

    def edit
        @blogapp = Blogapp.find(params[:id])
    end

    
    def update
        @blogapp = Blogapp.find(params[:id])
        @blogapp.update(title:params[:title], body:params[:body], author_id:params[:views])
        redirect_to "blogapp"
    end

    def delete
        @blogapp = Blogapp.find(params[:id])
        @blogapp.destroy
        redirect_to "/blogapps"
    end

    private

   
    def blogapp_params
        params.require(:blogapp).permit(:title, :body, :views)
    end
      
end
