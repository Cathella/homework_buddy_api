class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :type
      t.string :subject
      t.string :topic
      t.string :grade
      t.string :title
      t.string :incorrect_answer_1
      t.string :incorrect_answer_2
      t.string :incorrect_answer_3
      t.string :correct_answer
      t.text :info
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
