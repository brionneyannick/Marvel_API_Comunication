class CreateFights < ActiveRecord::Migration[5.1]
  def change
    create_table :fights do |t|
      t.string :win_id, null: false
      t.string :win_class, null: false
      t.string :lose_id, null: false
      t.string :lose_class, null: false

      t.timestamps
    end
  end
end
