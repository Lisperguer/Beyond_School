class CreateQuizDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :quiz_details do |t|
      t.string :pregunta
      t.boolean :respuesta
      t.references :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
