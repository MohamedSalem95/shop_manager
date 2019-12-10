class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|

      t.string :name
      t.text :description
      t.string :image
      t.decimal :price, :precision => 7, :scale => 2

      t.belongs_to :user

      t.timestamps
    end
  end
end
