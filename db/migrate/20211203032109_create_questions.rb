class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :options, array: true, default: []
      t.string :correct_answer
      t.string :subject
      t.string :grade
      t.text :info
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
