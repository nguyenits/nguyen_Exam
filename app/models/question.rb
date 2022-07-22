class Question < ApplicationRecord
  validates :quetion  , presence: true
  has_many :answer, dependent: :destroy
  validates_length_of :answer, maximum: 8
  accepts_nested_attributes_for :answer, allow_destroy: true, reject_if: :all_blank, limit: 8
end
