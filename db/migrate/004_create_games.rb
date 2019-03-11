class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.references :user, null: false
      t.boolean :over, null: false, default: false
      t.string :points, default: 0

      t.timestamps null: false
    end
  end
end
