class Level < ApplicationRecord
  belongs_to :adventure
  
    USER_CHOICES = {
	"1_1" => "You go home",
	"1_2" => "You investigate",
	"1_3" => "TEXT HERE",
	"2_1_1" => "TEXT HERE",
    }
    
    STORYTEXT = {
	"level1" => "TEXT HERE",
	"level2_1" => "TEXT HERE",
	"level2_2" => "TEXT HERE",
	"level2_3" => "TEXT HERE"
    }
  
end
