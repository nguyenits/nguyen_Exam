class Answer < ApplicationRecord
  belongs_to :question, optional: true
  validates_associated :question
end
