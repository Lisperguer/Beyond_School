class Section < ApplicationRecord
  belongs_to :course
  has_one :quiz
end
