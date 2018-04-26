class Adventure < ApplicationRecord
   has_many :levels
    validates :name, presence: true,
            length: { minimum: 3}
    validates :storyline, presence: true
end
