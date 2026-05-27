class CreateGuests < ActiveRecord::Migration[8.1]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :assistance
      t.text :comment

      t.timestamps
    end
  end
end
