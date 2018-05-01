class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.string :age, null: false
      t.string :img, null: false
      t.boolean :lose, default: false

      t.timestamps
    end
  end
end
