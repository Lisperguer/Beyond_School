class Section < ApplicationRecord
  belongs_to :course
  has_one :quiz
  has_many :user_models
end
