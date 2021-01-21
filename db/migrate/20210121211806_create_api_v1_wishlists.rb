class CreateApiV1Wishlists < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_wishlists do |t|
      t.integer :user_id
      t.timestamps
    end
  end
end
