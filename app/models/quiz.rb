class Quiz < ApplicationRecord
  belongs_to :section
  has_many :quizzes
end
