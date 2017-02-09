class CreateAnswerChoice < ActiveRecord::Migration[5.0]
  def change
    create_table :answer_choices do |t|
      t.string :answer, NULL: false
      t.integer :user_id, NULL: false
      t.integer :question_id, NULL: false

      t.timestamps
    end
    add_index(:answer_choices, :answer)
    add_index(:answer_choices, :user_id)
    add_index(:answer_choices, :question_id)
  end
end
