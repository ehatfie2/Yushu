class LevelsController < ApplicationController
    
    
    def create
        #if @adventure.levels.nil?
        #    @adventure = Adventure.find(params[:adventure_id])
        #    @level = @adventure.levels.create
        #else
            @adventure = Adventure.find(params[:adventure_id])
            @level = @adventure.levels.create(level_params)
            redirect_to play_adventure_path(@adventure)
            #change redirect to play method 
        #end
    end
    
    def play
        
    end
    
    def destroy
        @adventure = Adventure.find(params[:adventure_id])
        @level = @adventure.levels.find(params[:id])
        @level.destroy
        redirect_to adventure_path(@adventure)
    end
    
    private
        def level_params
            params.require(:level).permit(:level, :user_choice, :pointer)
        end
end
