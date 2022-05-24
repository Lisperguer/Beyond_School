class Course < ApplicationRecord
  has_many :user_courses
  has_many :sections
  has_many :reviews
  has_one_attached :photo
end
