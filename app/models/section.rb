class Section < ApplicationRecord
  belongs_to :course
  has_one :quiz
  has_one_attached :video
end
