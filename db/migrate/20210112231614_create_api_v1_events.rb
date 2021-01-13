class CreateApiV1Events < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_events do |t|
      t.integer :user_id
      t.string :title
      t.date :date
      t.string :type
      t.boolean :annual
      t.string :description
      t.integer :celebrator_id

      t.timestamps
    end
  end
end
