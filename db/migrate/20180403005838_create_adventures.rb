class CreateAdventures < ActiveRecord::Migration[5.1]
  def change
    create_table :adventures do |t|
      t.string :name
      t.string :storyline

      t.timestamps
    end
  end
end
