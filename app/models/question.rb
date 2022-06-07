class Question < ApplicationRecord
  validates :quetion  , presence: true
  validates :a1  , presence: true
  validates :a2  , presence: true
  validates :a3  , presence: true
  validates :a4  , presence: true
  validates :ans  , presence: true

end
