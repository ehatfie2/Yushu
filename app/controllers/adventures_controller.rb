class AdventuresController < ApplicationController
    def index
        @adventures = Adventure.all
    end
    
    def show
        @adventure = Adventure.find(params[:id])
    
    end
    
    def new
        @adventure = Adventure.new
        
        #@level = @adventure.levels.create()
        
        #@level.each do |name, population|
        #    Level.create(level: 'Initial', user_choice: nil, pointer: "start'")
        #end
        
    end
    
    def edit
        @adventure = Adventure.find(params[:id])
    end
    
    def create
        
        @adventure = Adventure.new(adventure_params)
        
        #@adventure = Adventure.find(params[:adventure_id])
        
        
        
        
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
