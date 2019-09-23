class Name < ApplicationRecord
    validates :name, :surname, presence: true
end
