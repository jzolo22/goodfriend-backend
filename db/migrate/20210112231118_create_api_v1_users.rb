class CreateApiV1Users < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_users do |t|
      t.string :username
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :address
      t.string :partner_name
      t.date :partner_birthday
      t.string :venmo_handle
      t.boolean :flowers

      t.timestamps
    end
  end
end
