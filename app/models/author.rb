class Author < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: true
    # This could have also said         validates :name, presence: true, uniqueness: true
    validates :phone_number, length: { is: 10 }
end
