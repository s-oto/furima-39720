class CreatePrefectures < ActiveRecord::Migration[7.0]
  def change
    create_table :prefectures do |t|
      t.string     :title        , null: false
      t.text       :text         , null: false
      t.integer    :prefecture_id     , null: false
      t.timestamps
    end
  end
end
