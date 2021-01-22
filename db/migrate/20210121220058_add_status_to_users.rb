class AddStatusToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :api_v1_users, :status, :string
  end
end
