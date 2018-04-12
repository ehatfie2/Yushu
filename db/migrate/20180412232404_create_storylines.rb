class CreateStorylines < ActiveRecord::Migration[5.1]
  def change
    create_table :storylines do |t|
      t.string :selection
      t.references :adventure, foreign_key: true

      t.timestamps
    end
  end
end
