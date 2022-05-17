class CreateQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.string :nombre
      t.text :preguntas
      t.text :respuestas
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
