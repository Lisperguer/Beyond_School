class CreateQuizStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :quiz_statuses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :quiz, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
