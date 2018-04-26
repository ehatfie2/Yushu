class CreateLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :levels do |t|
      t.string :level
      t.string :user_choice
      t.string :pointer
      t.references :adventure, foreign_key: true

      t.timestamps
    end
  end
end
