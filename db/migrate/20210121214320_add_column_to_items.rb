class AddColumnToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :api_v1_items, :link, :string
  end
end
