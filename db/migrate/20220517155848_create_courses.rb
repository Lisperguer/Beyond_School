class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :titulo
      t.string :duracion
      t.text :detalle

      t.timestamps
    end
  end
end
