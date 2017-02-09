class CreatePoll < ActiveRecord::Migration[5.0]
  def change
    create_table :polls do |t|
      t.string :title, NULL: false
      t.integer :user_id, NULL: false

      t.timestamps
    end
    add_index(:polls, :title, unique: true)
    add_index(:polls, :user_id)
  end
end
