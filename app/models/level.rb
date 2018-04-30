class Level < ApplicationRecord
  belongs_to :adventure

    
    LEVEL_HASH = {
    	start: {text:"It's a warm night in October and you're walking down a dimly-lit street at midnight. 
					    You're on your way home from a covert meeting in which you learned some interesting information in exchange for a few hints of your own, courtesy of the snooping - that is, investigating - that comes with being a private detective. It wasn't strictly speaking legal, of course, but you're well aware that sometimes rule-breaking is necessary. You also have no great love for cops, and secretly feel a bit of pleasure disregarding their laws and making your own way. 
						As you pass by an alleyway, you hear what sounds like an intense but furtive argument. You stop for a moment and strain your ears. The voices seem to be getting steadily more heated.
						What do you do? ",
    					user_choices:{"Try to break up the argument. It's your duty as a private detective.":"investigate",
    								"Leave. Whatever it is, it's none of your business.":"leave"}},



        investigate: {text:"You turn the corner into the alleyway and see two shadowed figures engaged in an argument. 
                            You take note of their confrontational body language and wild hand gestures. 
                            You think you can see the glint of a knife in the hands of the one on the right. Whatever their disagreement is, it seems to be edging closer to violence.
                            What approach do you take to break up the fight?",
                        user_choices:{"Authoritative and firm. They need to see you're not messing around":"firm" ,
                        "Diplomacy is key. You don't want to fan the flames.":"diplomatic" , 
                        "Words are useless in a situation like this. You need to physically intervene":"step_in" }},
        
    		
    	
    	
    	leave: {text:"You leave. You're already tired from your earlier meeting, and sometimes it gets a bit old sticking your nose in everything. 
    	                If you don't go looking for trouble, perhaps trouble won't go looking for you (for once in your life). ",
                        user_choices:{"The next day...":"morning" }},
    	
    	firm: {text:"'Hey, hey, break it up!' you shout, endeavoring to sound stern and authoritative.They both startle and quickly turn towards you. 
    	                                    The one on the right seems to panic and slashes at you with his knife.
    	                                    You're far away enough that you manage to jump back before it can seriously injure you, but he still catches you with the edge of the knife, leaving a shallow cut on your arm.
    	                                    Before you can say anything to try and calm him down, you hear a terrifying snarl and see a massive blurry shape materialize from the shadows. 
    	                                    It runs directly towards the man who attacked you, and pounces. You hear an agonized scream before it abruptly cuts off. 
                                            Looking around wildly, you see that the other man has disappeared and within seconds, the creature vanishes as well. All that's left to show anything happened at all is a bloody smear on the ground. 
                                            You're not particularly eager to try and explain to the police what exactly just happened and what you were even doing here in the first place, so without further ado, you decide to get the hell out of there.",
                        user_choices:{"The next day...":"morning" }},
    	
    	diplomatic: {text:"You approach the two men slowly, hands raised in front of you to show you mean no harm. 'Woah now,' you call out, trying to sound reasonable. Let's all just calm down, shall we? 
    	            The men whirl around to face you. The one on the left gives a faint scoff, and the one on the right warns shakily, seeming on the edge of panic, You'll mind your own business if you know what's good for you!
    	            You try to figure out what to say next to calm him down and de-escalate the situation, but before you have the chance, you hear a terrifying snarl and see a massive blurry shape materialize from the shadows. 
    	            It runs directly towards the man on the right, and pounces. You hear an agonized scream before it abruptly cuts off. Looking around wildly, you see that the other man has disappeared and within seconds, the creature vanishes as well. All that's left to show anything happened at all is a bloody smear on the ground. 
                    You're not particularly eager to try and explain to the police what exactly just happened and what you were even doing here in the first place, so without further ado, you decide to get the hell out of there.",
                        user_choices:{ "The next day...":"morning" }},
                        
    	step_in: {text:"You rush forward and try to step between the two arguing men to force them away from each other. Unfortunately, the person to the right startles violently at your sudden appearance. Too late you realize he thinks you're trying to attack him. Panicked, he lunges at you with his knife, and though you try to dodge it, you're too close to avoid it. The knife buries in your chest. 
    	                You stare down in shock at the hilt of the weapon. Your knees buckle and you feel blood slowly trickle from your mouth. The man seems to realize what he's done and jumps back, clearly horrified. 
    	                As your vision goes dark and your thoughts become vague, you hear a terrifying snarl and see a massive blurry shape pounce on the man who attacked you. The last thing you hear is his agonized scream. 
    	                You have died.",
                        user_choices:{"keep going":"game_over" }},
    	
    	morning: {text:"The next day, you wake up to a newspaper headline that announces a gruesome murder which has authorities baffled. You skim over the details, not wanting to disturb your fickle stomach, but you gather that it was... messy. 
    	            As you read on, you discover that the police have a suspect in custody. To your shock, you recognize the name. 
    	            It's your uncle.?",
                        user_choices:{ "Who is this guy anyway?":"reflect" ,
                        "No time for a trip down memory lane! You need to get to the jailhouse posthaste!":"go_visit_the_jail" , 
                        "Actually, you know what? No. This has nothing to do with you.":"nope" }},
    	
    	reflect: {text:"You know your uncle is a scientist who owns a company that specializes in DNA manipulation. Or something. 
    	                   You don't really know what that entails and you don't much care. Science was never your best subject in school. 
    	                   But it seems to be going well for him, because you remember your parents mentioning that he's practically rolling in money.
    	                   You don't actually know him that well, and you don't have much of a desire to. You've met him maybe a handful of times over the course of your life, 
    	                   and don't have much of a desire to get to know him better. You've never really trusted his oily smile and too-smooth words.",
                        user_choices:{"Okay, that's enough background. Time to go to jail":"go_visit_the_jail" }},
    	
    	go_visit_the_jail: {text: "You arrive at the city jailhouse. They let you in to see him without much trouble, courtesy of your status as a respectable detective. 
                            (okay, so maybe it has more to do with the fact that one of the guards passes you information in exchange for certain...goods, but who's counting?)
                            When you enter your uncle's cell, you see him sitting on the bench, appearing deep in thought. He doesn't seem surprised to see you and gives you a calculating smile as you walk in. 
                            'Uncle,' you cooly greet him. 
                            'Child of my sibling,' he returns, unruffled. 'I have to say, I didn't think much of your career choice when I first heard of it,
                            but considering my current situation I admit now that it may prove useful to have a family member who works adjacent to law enforcement.'
                            Ugh. This guy kinda skeeves you out.
                            How do you want to act towards to your uncle?",
                        user_choices:{"Be polite, you catch more flies with honey, and he is family after all":"nice", 
                                        "Forget manners. You don't like or trust him and you don't care if he knows it.":"mean"}},
        
        nope: {text: "Honestly, you barely even know the guy. He can get himself out of this mess. 
                    You're going to have a lovely day by yourself with no mysterious murders to ruin it. 
                    You're done.",
                    user_choices:{"Are you sure?":"sure" }},
        
        sure: {text: "", user_choices:{"Yes, you're done":"game over", "On second thought...":"no"}},
        
        continue_reflecting: {text: "Now that you think about it, you actually remember seeing a few articles about him in the newspaper. You never paid them much attention, 
                                    but from what you recall, half of them were praising his discoveries with the whole DNA manipulation, or creation, or like...gene theory, 
                                    or whatever it is (like you said, you're not great at science), while the other half reported on the controversy that surrounds his field.
                                    You remember hearing rumors floating around about illegal experimentation or human rights violations or something, 
                                    but so far he hasn't been implicated or charged with anything. To be honest, 
                                    you're pretty curious to find out what they actually have on him and if there's any truth to the rumors. 
                                    You guess you'll find out once you make it to the jailhouse (hint hint).",
                    user_choices:{"Yeah okay, you seriously need to go see your uncle now.":"Go visit the jail" }},
        
        no: {text: "Yeah, as nice as it would be to ignore everything, you should probably actually take care of this.",
                    user_choices:{"So who is this guy again?":"Reflect" , "No time for a trip down memore lane!":"go_visit_the_jail" }},
                    
        nice: {text: "He nods approvingly. 'Now that's what I like to hear. It's good to see someone with proper familial loyalty. 
                It's an all too rare thing these days.' He considers you with a shrewd look in his eyes, as though you're some fascinating specimen he has under a microscope.
                'So,' you say, deciding to move on. 'What exactly happened here?' He takes a breath. 
                'Here are the basic facts: I have been experimenting with DNA manipulation for many years now, endeavoring to create artificial lifeforms. 
                I had two brilliant assistants who were helping me with my great work. One of them is now a bloody smear on the pavement. 
                The other is the one who caused his death.'
                He goes on to explain that two weeks ago he had finally made a breakthrough in his research, 
                and discovered the secret to creating artifical life. 'Unfortunately,' he says darkly, 'my assistants were not to be trusted. 
                That very night, they stole my work and vanished. 
                I've since then put together that they created one of the beasts I designed and proceeded to quarrel over something, 
                leading to the murder which I was then framed for.' He says he doesn't know what the quarrel was about, 
                but that he knows where the surviving assistant will be tonight. 'He has a warehouse he uses as a lab and hideout. 
                He thinks he's kept it a secret, but he can't hide anything from me.' He sniffs in superiority. 
                'You'd better head over there as soon as possible. It's highly likely he'll use the creature to attack others and try to bend the city to his will. 
                The police are useless here and I can't tell them about this anyway, so you may well be the only one who can stop him.' Hmm. 
                That's a responsibility you're not quite sure you want. You know he's right though, so after getting directions to the warehouse, 
                you leave, determined to do something to stop the assistant. Even if you're not sure what the hell that is yet.",
                user_choices:{"Go to the warehouse":"final_confrontation"}},
                
        mean: {text: "You give your uncle a hard look. 'Look, buddy,' you say. 'Right now, we're not family. You're just a guy involved in a weird-ass murder, 
                and I'm the one who just might be able to solve it. I don't much care whether it ends with you released or rotting in jail for the rest of your life, 
                as long as the real culprit is caught. Whoever that might turn out to be.' He nods slowly. 'Fair enough,' he says, not bothering to argue. 
                But you notice him watching you closely, as though pondering whether you might be trouble. Having made your stance clear, 
                you decide to move on. 'So,' you say. 'What exactly happened here?' He takes a breath and opens his mouth, but before he can speak, you warn, 
                'And don't even think about lying. Trust me, I'll be able to tell.' He gives you a somewhat sour look.'I wasn't intending to. 
                As I was going to say before you so rudely interrupted, here are the basic facts: 
                I have been experimenting with DNA manipulation for many years now, endeavoring to create artificial lifeforms. 
                I had two brilliant assistants who were helping me with my great work. One of them is now a bloody smear on the pavement. 
                The other is the one who caused his death.' He goes on to explain that two weeks ago he had finally made a breakthrough in his research, 
                and discovered the secret to creating artifical life. 'Unfortunately,' he says darkly, 'my assistants were not to be trusted. 
                That very night, they stole my work and vanished. 
                I've since then put together that they created one of the beasts I designed and proceeded to quarrel over something, 
                leading to the murder which I was then framed for.' He says he doesn't know what the quarrel was about, 
                but that he knows where the surviving assistant will be tonight. 'He has a warehouse he uses as a lab and hideout. 
                He thinks he's kept it a secret, but he can't hide anything from me.' He sniffs in superiority.
                'You'd better head over there as soon as possible.
                It's highly likely he'll use the creature to attack others and try to bend the city to his will. 
                The police are useless here and I can't tell them about this anyway, so you may well be the only one who can stop him.' Hmm. 
                That's a responsibility you're not quite sure you want. 
                You grudgingly know he's right though, so after getting directions to the warehouse, you leave, 
                determined to do something to stop the assistant." ,
                user_choices:{ "Go to the warehouse":"final_confrontation"}},
                
    	final_confrontation: {text:"You arrive at the warehouse and stride through the door. The room is empty except for a few tables with what looks like lab equipment and multiple piles of folders. 
    	                A person who must be the assistant is leaning over one of the tables peering over a microscope. He whirls around as you enter. 
    	                He stares at you in shock. 'How did you find me?' he demands. No one alive knows about this place!' 
    	                You smirk. 'Seems like your secrets aren't as secret as you think.'
    	                He growls. 'No matter. You can't win, you know. I do have a literal monster on my side, or have you forgotten?' He raises a hand, fingers prepared to snap and call for the creature.
    	                Uh oh. You'd better stop him quick. What do you do? ",
    		user_choices:{ "Rush at him and attack!":"attack",
    					    "Try to stall and find out more information":"more_info",
    						"Cause a distraction and attack him when his attention is elsewhere":"sneaky_attack"}},
    	
    	attack: { text:"You run at him with a roar, fist raised to knock him out with a punch to the face. You don't even make it halfway to him before he snaps his fingers and gives an attack command.
                        You hear a growl from one of the darkened corners. It grows louder and louder until it's a snarl of rage. Something barrels towards you and pounces. 
                        Your last thought before the creature's claws and teeth descend on you is 'Oops'. You have died.",
    	
    						user_choices:{ "...":'game_over'}},
    	
    	more_info: {text:"'Wait, hold on a second!' you yell. 'Don't you want to know what your former boss is plotting against you? How do you think I got here, after all?'",
    	
    							user_choices:{ "Rush him and attack!":"attack",
    	                        "Cause a distraction and attack him when his attention is elsewhere":"sneaky_attack"}},
    	
    	
    	sneaky_attack: { text: "You think quickly. You probably won't have enough time to reach him before he sets the monster on you, so you have to neutralize him from a distance.

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
    	
    							user_choices:{ "The next day...":"jail_again"}},
    							
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
                      							"Turn him in":"turn_in",
                      							"Walk Away. You're done with all of this": "walk_away"}},
                      
                      
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
    								user_choices:{ "...":"congratulations"}},
    
    	congratulations: {text: "Congratulations, you have won the game! THE END",
        							user_choice:{"":""}},
    
    	game_over: {text: "Better luck next time! GAME OVER",
        					user_choice:{"":""}}
    
    	}
end
