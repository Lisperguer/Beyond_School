class AddStatusToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :status, :boolean
  end
end
