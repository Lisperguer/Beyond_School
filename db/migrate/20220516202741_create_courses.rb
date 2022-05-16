class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :titulo
      t.integer :duracion
      t.text :detalle
      t.boolean :premium

      t.timestamps
    end
  end
end
