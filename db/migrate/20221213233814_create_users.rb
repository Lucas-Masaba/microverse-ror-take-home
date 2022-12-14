class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :api_id
      t.string :first_name
      t.string :last_name
      t.string :status
      t.date :created_at
      t.string :email
    end
  end
end
