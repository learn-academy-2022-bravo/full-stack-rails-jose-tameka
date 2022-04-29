class BravoBlogController < ApplicationController

    def index
        @bravo_blogs = BravoBlog.all 
    end

    def show
        @bravo_blog = BravoBlog.find(params[:id])
    end

    def new
        @bravo_blog = BravoBlog.new
    end

    def create
        @bravo_blog = BravoBlog.create(entry_params)
        if @bravo_blog.valid?
            redirect_to entries_path
        end
    end 

    private
    def entry_params
        params.require(:bravo_blog).permit(:title, :content)
    end


end
