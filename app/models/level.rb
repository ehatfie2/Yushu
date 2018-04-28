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
    
    
    LEVEL_HASH = {
    	start: {text:"It's a warm night in October and you're walking down a dimly-lit street at midnight. 
												You're on your way home from a covert meeting in which you learned some interesting information in exchange for a few hints of your own, courtesy of the snooping - that is, investigating - that comes with being a private detective. It wasn't strictly speaking legal, of course, but you're well aware that sometimes rule-breaking is necessary. You also have no great love for cops, and secretly feel a bit of pleasure disregarding their laws and making your own way. 
									      As you pass by an alleyway, you hear what sounds like an intense but furtive argument. You stop for a moment and strain your ears. The voices seem to be getting steadily more heated.
												What do you do? ",
    		user_choices:{"Try to break up the argument. It's your duty as a private detective.":"investigate",
    								"Leave. Whatever it is, it's none of your business.":"leave"}},
    	
    	investigate: {
    		
    	}
    	
    
    	}
end
