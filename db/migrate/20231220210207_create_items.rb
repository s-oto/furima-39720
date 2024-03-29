class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :item, null: false
      t.text :description, null: false
      t.integer :price, null: false
      t.integer :category_id, null: false
      t.integer :status_id, null: false
      t.integer :charge_id, null: false
      t.integer :prefecture_id, null: false
      t.integer :day_id, null: false
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
