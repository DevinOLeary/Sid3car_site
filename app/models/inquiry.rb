class Inquiry < ApplicationRecord
  validates :name, presence: true, length: {maximum: 50, minimum: 1 }
  validates :email, presence: true, length: {maximum: 50, minimum: 6}
end
