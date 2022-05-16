class CreateUserModels < ActiveRecord::Migration[6.1]
  def change
    create_table :user_models do |t|
      t.references :user, null: false, foreign_key: true
      t.references :section, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
