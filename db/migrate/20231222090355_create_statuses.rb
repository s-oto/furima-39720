class CreateStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :statuses do |t|
      t.string     :title        , null: false
      t.text       :text         , null: false
      t.integer    :status_id     , null: false
      t.timestamps
    end
  end
end
