class CreateUsedCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :used_characters do |t|

      t.timestamps
    end
  end
end
