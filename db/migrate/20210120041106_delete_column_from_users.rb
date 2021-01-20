class DeleteColumnFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :api_v1_users, :profile_picture, :string
  end
end
