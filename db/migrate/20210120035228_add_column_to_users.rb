class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :api_v1_users, :profile_picture, :string
  end
end
