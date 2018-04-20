class AddStorylineToAdventures < ActiveRecord::Migration[5.1]
  def change
    add_column :adventures, :storyline, :string
  end
end
