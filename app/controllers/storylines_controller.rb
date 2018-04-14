class StorylinesController < ApplicationController
    def create
        #@adventure = Adventure.find(params[:adventure_id])
        #@storyline = @adventure.storyline.create(storyline_params)
        @storyline = Storyline.new(:adventure_id => 2)
        redirect_to adventure_path(@adventure)
    end
    
    private
    def comment_params
      params.require(:storyline).permit(:storyline)
    end
end
