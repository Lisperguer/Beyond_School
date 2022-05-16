class CreateSections < ActiveRecord::Migration[6.1]
  def change
    create_table :sections do |t|
      t.string :nombre
      t.text :descripcion
      t.references :course, null: false, foreign_key: true
      t.string :url_cloudinary

      t.timestamps
    end
  end
end
