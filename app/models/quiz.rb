class Quiz < ApplicationRecord
  belongs_to :section
  has_many :quiz_statuses


end
