class Level < ApplicationRecord
  belongs_to :adventure
  
    USER_CHOICES = {
	"1_1" => "You go home",
	"1_2" => "You investigate",
	"1_3" => "TEXT HERE",
	"2_1_1" => "TEXT HERE",
    }
  
end
