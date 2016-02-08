class Doctor < ActiveRecord::Base
  has_one :user, as: :profile

  validates :first_name, presence: true, length: {minimum: 3, maximum: 20} 
  validates :last_name, presence: true, length: {minimum: 3, maximum: 20} 
end