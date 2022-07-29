class Answer < ApplicationRecord
  belongs_to :question, optional: true
  validates :moreans  , presence: true
  validates_associated :question
end
