class CreateSweets < ActiveRecord::Migration[5.2]
  def change
    create_table :sweets do |t|
      t.string :shop
      t.string :sweet
      t.string :detail

      t.timestamps
    end
  end
end
