class Doctor < ActiveRecord::Base
  
  has_one :user, as: :profile, dependent: :destroy
  accepts_nested_attributes_for :user

  validates :first_name, presence: true, length: {minimum: 3, maximum: 20} 
  validates :last_name, presence: true, length: {minimum: 3, maximum: 20}

  
end