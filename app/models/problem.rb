class Problem < ActiveRecord::Base
    validates :condition, presence: true, length: {minimum: 3, maximum: 20} 
    validates :issue_name, presence: true, length: {minimum: 3, maximum: 100}
    validates :type, presence: true, length: {minimum: 3, maximum: 20} 
    validates :start_date, presence: true, 
              format: {with: /[0-9]{1,2}\/[0-9]{1,2}\/[0-9]{4}/, message: "must be DD/MM/YYYY"}
    validates :comment, presence: true, length: {minimum: 3, maximum: 250}

end