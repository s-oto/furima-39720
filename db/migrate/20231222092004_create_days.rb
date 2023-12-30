class CreateDays < ActiveRecord::Migration[7.0]
  def change
    create_table :days do |t|
      t.string     :title        , null: false
      t.text       :text         , null: false
      t.integer    :day_id     , null: false
      t.timestamps
    end
  end
end
