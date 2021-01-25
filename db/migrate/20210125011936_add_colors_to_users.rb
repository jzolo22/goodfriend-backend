class AddColorsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :api_v1_users, :first_color, :string
    add_column :api_v1_users, :second_color, :string
  end
end
