class CreateQuestion < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :question, NULL: false
      t.integer :poll_id, NULL: false

      t.timestamps
    end
    add_index(:questions, :question, unique: true)
    add_index(:questions, :poll_id)
  end
end
