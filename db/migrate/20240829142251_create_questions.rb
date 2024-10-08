class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.references :survey, null: false, foreign_key: true
      t.string :question
      t.references :type, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
