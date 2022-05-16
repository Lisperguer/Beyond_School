class Course < ApplicationRecord
  has_many :sections
  has_many :user_courses
  has_many :users, through: :user_courses
end
