class Profile < ApplicationRecord
  validates :name,
  presence: true, length: {minimum: 2}

  validates :age,
  presence: true
  
  validates :gender,
  presence: true
end
