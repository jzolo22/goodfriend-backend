class CreateApiV1Follows < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_follows do |t|
      t.string :follower_id
      t.string :followee_id

      t.timestamps
    end
  end
end
