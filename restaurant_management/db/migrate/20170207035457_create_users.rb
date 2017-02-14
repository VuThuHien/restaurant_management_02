class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.boolean :isAdmin, default: false
      add_index :users, :email, unique: true

      t.timestamps
    end
  end
end
