class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.belongs_to :order
      t.belongs_to :product


      t.integer :quantity
      t.timestamps
    end
  end
end
