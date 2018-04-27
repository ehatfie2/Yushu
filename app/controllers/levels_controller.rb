class LevelsController < ApplicationController
    def create
        @adventure = Adventure.find(params[:adventure_id])
        @level = @adventure.levels.create(level_params)
        redirect_to adventure_path(@adventure)
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
