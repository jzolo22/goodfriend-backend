class RemoveColumnFrom < ActiveRecord::Migration[6.0]
  def change
    remove_column :api_v1_users, :status, :string
  end
end
