class AddColumnImagelinkToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :api_v1_items, :image_link, :string
  end
end
