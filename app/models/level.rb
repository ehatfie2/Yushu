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
    		
    	},
    	
    	
    	
    	final_confrontation: {text:"You arrive at the warehouse and stride through the door. The room is empty except for a few tables with what looks like lab equipment and multiple piles of folders. 
    	                A person who must be the assistant is leaning over one of the tables peering over a microscope. He whirls around as you enter. 
    	                He stares at you in shock. 'How did you find me?' he demands. No one alive knows about this place!' 
    	                You smirk. 'Seems like your secrets aren't as secret as you think.'
    	                He growls. 'No matter. You can't win, you know. I do have a literal monster on my side, or have you forgotten?' He raises a hand, fingers prepared to snap and call for the creature.
    	                Uh oh. You'd better stop him quick. What do you do? ",
    		user_choices:{"Rush at him and attack!":"attack",
    					    "Try to stall and find out more information":"more info",
    						"Cause a distraction and attack him when his attention is elsewhere": "sneaky attack"}},
    	
    	attack: { text:"You run at him with a roar, fist raised to knock him out with a punch to the face. You don't even make it halfway to him before he snaps his fingers and gives an attack command.
                        You hear a growl from one of the darkened corners. It grows louder and louder until it's a snarl of rage. Something barrels towards you and pounces. 
                        Your last thought before the creature's claws and teeth descend on you is 'Oops'. You have died.",
    	
    						user_choices:{ "...": 'game over'}},
    	
    	more_info: {text:"'Wait, hold on a second!' you yell. 'Don't you want to know what your former boss is plotting against you? How do you think I got here, after all?'",
    	
    							user_choices:{ "Rush him and attack!":"attack",
    	                "Cause a distraction and attack him when his attention is elsewhere": "sneaky attack"}},
    	
    	
    	sneaky: { text: "You think quickly. You probably won't have enough time to reach him before he sets the monster on you, so you have to neutralize him from a distance.

                        Quick as a flash, you pull off one your heavy boots and hurl it with all your strength at his face. 
                        He's too surprised to react in time, and it hits him square on his nose, gushing blood and causing him to stagger.
                        You take advantage of his disorientation and rush at him, fist raised. It connects solidly with his jaw and knocks him backwards. 
                        He seems to be trying to yell for the creature, but the blood flowing over his mouth is making it difficult. Before he can manage it anyway, you pick up your boot again and slam it down on his head. 
                        He falls back, knocked out cold. Just then, you hear a growl from one of the darkened corners. Uh oh. You almost forgot you still have a monster to contend with. 
                        It emerges from the shadows and runs straight toward you. You yelp and look around wildly for some kind of weapon, but to your astonishment, it doesn't attack you at all. 
                        It runs past you, intently focused on the unconscious assistant. Roaring with rage, it pounces on him. You look away with a wince as it...does its thing. 
                        When it finishes, it looks around the room, but doesn't attack you. In fact, it doesn't seem aggressive at all anymore. It approaches you slowly and sniffs at you, almost like a dog would. 
                        It's still massive and terrifying, but you realize that the assistant must have been forcing it to obey him somehow. When you knocked him out, the control was broken and the creature was freed. 
                        It looks like it doesn't have any desire to kill anything other than the one who imprisoned it. 'Huh,' you say softly. The creature is actually sort of friendly-looking when it isn't ripping people to shreds. 
                        You take a moment to gather up the folders containing evidence of the many misdeeds of your uncle and his assistants, and then exit the warehouse. 
                        The creature follows you out and then slips away into the night. You wonder if you'll ever see it again. Exhausted, you head back home to get some well-earned sleep.",
    	
    							user_choices:{ "The next day...": "jail again"}},
    							
    	jail_again: { text: "The next day, you head to the jailhouse one last time to see your uncle as he's released.
                        When you get there, he's already out and collecting his things at the desk. You still have the file the assistant dropped. You haven't quite decided what to do with it.
                        Your uncle looks over as you walk in and gives you a satisfied smirk. 'Well, well, well,' he says. 
                        'I have to say, you've exceeded my expectations somewhat. The way you managed to get rid of both my assistant and the creature in one fell swoop has proven most fortuituous.' 
                        He fixes you with a speculative glance. 'And on that note, I have an offer to make to you.'
                        You listen impassively as he explains. He says that it would be incredibly valuable to have a private detective on his side to help him when he inevitably faces more trouble with the law - 
                        one who happens to be familiar with the criminal underworld, no less. He is willing to pay you a hefty salary with endless perks if you join forces with him and protect him as 
                        he continues with his experiments. He says, 'With my creations and research, I can soon have the entire city in my pocket. 
                        Anything you could want - money, power, fame - will be easily within our reach. It's a once-in-a-lifetime opportunity.'He smiles at you, already sure what your answer will be. 'What you do say?'
                        What do you do?",
        						user_choices:{ "Join him":"join",
                      							"Turn him in":"turn in",
                      							"Walk Away. You're done with all of this": "walk away"}},
                      
                      
    	join: { text: "You ignore the slight twinge of your conscience. It's been a long time since you followed it anyway. Your uncle's offer is far too appealing to resist. 
    									Besides, it's not so different from what you already do to gain information as a detective. And what has this city ever done for you anyway?
    									You smile and extend your hand to your uncle. 'Accepted,' you say. 'I think I'm going to enjoy working with you.'
    									He shakes your hand, looking immensely pleased. 'I promise you,'' he says, 'We are going to accomplish great things together. The world is our oyster.' 'Well then we'd better get started, haven't we?'
    									Together, you walk out the jailhouse door and toward whatever lays beyond.",
    						user_choices:{"...": "congratulations"}},
    
    	turn_in: { text: "You feel your lip curl in disgust at his scheming. You can't in good conscience let him get away with this when you have the power to stop it. 
    										You coldly say, 'You know, your assistant dropped a fascinating file when he died. If I recall correctly, it contains information about some sort of illegal experiments done in the city over the past twenty years. 
    										I think I know some people who would extremely interested to read it, don't you?' You see a look of dawning horror in his eyes. Before he can say anything, you turn and stalk out the door. You ignore his cry for you to wait. 
    										The next day, government officials descend down in your uncle and take him into custody. The newspaper headline screams about the discovery of illegal experimentation and your uncle's fall from glory. 
    										You know that this time, he won't get away with it. You carelessly toss the newspaper away, already bored with it. It's no less than he deserves. You can't supress a satisfied smirk, however. You sip your tea, feeling content.
    										Somewhere outside your apartment, a creature gives a friendly howl and you feel safe knowing it's watching over you.",
    						user_choices:{ "...": "congratulations"}},
    
    	walk_away: { text: "You've had enough. This whole business has been nothing but trouble for you. You're sick of it all. Your uncle can keep his schemes and plots and glory and fame. He and this city can burn for all you care. 
    											You don't bother to respond to him, and you see his smile slowly start to fade. You turn away from him as though he's of entirely no consequence to you. You walk away from your uncle without saying a single word.
    											You don't look back. The jailhouse door slams shut behind you",
    								user_choices:{ "...": "congratulations"}},
    
    	congratulations: {text: "Congratulations, you have won the game! THE END",
        							user_choice:{"":""}},
    
    	game_over: {text: "Better luck next time! GAME OVER",
        					user_choice:{"":""}}
    
    	}
end
