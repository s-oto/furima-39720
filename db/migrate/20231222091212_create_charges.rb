class CreateCharges < ActiveRecord::Migration[7.0]
  def change
    create_table :charges do |t|
      t.string     :title        , null: false
      t.text       :text         , null: false
      t.integer    :charge_id     , null: false
      t.timestamps
    end
  end
end
