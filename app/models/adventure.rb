class Adventure < ApplicationRecord
   
    validates :name, presence: true,
            length: { minimum: 3}
    validates :storyline, presence: true
end
