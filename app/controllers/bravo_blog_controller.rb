class BravoBlogController < ApplicationController

    def index
        @all_blogs = BravoBlog.all 
    end 

end
