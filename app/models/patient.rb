class Patient < ActiveRecord::Base
    has_one :user, as: :profile, dependent: :destroy
    accepts_nested_attributes_for :user
    
    validates :first_name, presence: true, length: {minimum: 3, maximum: 20} 
    validates :last_name, presence: true, length: {minimum: 3, maximum: 20} 
    validates :date_of_birth, presence: true, 
              format: {with: /[0-9]{1,2}\/[0-9]{1,2}\/[0-9]{4}/, message: "must be DD/MM/YYYY"}
    validates :region, presence: true, length: {minimum: 3, maximum: 15}
end