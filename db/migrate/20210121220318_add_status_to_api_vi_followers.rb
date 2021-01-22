class AddStatusToApiViFollowers < ActiveRecord::Migration[6.0]
  def change
    add_column :api_v1_follows, :status, :string
  end
end
