class CreateUser < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, NULL: false

      t.timestamps
    end
    add_index(:users, :name, unique: true)
  end
end
