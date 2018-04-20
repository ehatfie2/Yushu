class AdventuresController < ApplicationController
    def index
        @adventures = Adventure.all
    end
    
    def show
        @adventure = Adventure.find(params[:id])
    
    end
    
    def new
        @adventure = Adventure.new
        
    end
    
    def edit
        @adventure = Adventure.find(params[:id])
    end
    
    def create
        #case params["storyline"].to_i
        #when 1
         #   @storyline = params[:storyline]
        #when 2
        #    @storyline = params[:storyline]
        #end
        
        @adventure = Adventure.new(adventure_params)
        
        
        #if params[:storyline].nil?
         #   @adventure = @storyline = nil
        #else
         #   @storyline = params[:storyline]
          #  #@adventure = Adventure.find(params[:id])
        #end
        
        if @adventure.save
            redirect_to @adventure
        else
            render 'new'
        end
        
    end
    
    def update
        @adventure = Adventure.find(params[:id])
 
        if @adventure.update(adventure_params)
            redirect_to @adventure
        else
            render 'edit'
        end
    end
    
    def destroy
        @adventure = Adventure.find(params[:id])
        @adventure.destroy
        
        redirect_to adventures_path
    end
    
    def play
        @adventure = Adventure.find(params[:id])
    end
    
    private
        def adventure_params
            params.require(:adventure).permit(:name, :storyline)
        end
end
