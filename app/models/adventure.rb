class Adventure < ApplicationRecord
   has_many :storylines
    validates :name, presence: true,
            length: { minimum: 3}
end
