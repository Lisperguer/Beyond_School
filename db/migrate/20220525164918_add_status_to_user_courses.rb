class AddStatusToUserCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :user_courses, :status, :boolean, default: false
  end
end
