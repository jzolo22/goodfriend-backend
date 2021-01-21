class CreateApiV1Items < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_items do |t|
        t.integer :wishlist_id
        t.string :name
      t.timestamps
    end
  end
end
