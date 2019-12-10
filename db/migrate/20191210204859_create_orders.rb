class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.belongs_to :user
      t.timestamps
    end
  end
end
