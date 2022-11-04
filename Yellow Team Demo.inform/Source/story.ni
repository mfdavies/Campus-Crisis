"Exam" by The Yellow Team

Include Common Commands Sidebar by Alice Grove.
Include Conversation Package by Eric Eve.
Include NPC Implicit Actions by Eric Eve.
Include Exit Lister by Gavin Lambert.
Include Complex Listing by Emily Short.

Use undo prevention.
Sound of alarm is the file "alarm.ogg".
The pname is a text that varies.

Release along with an interpreter.

When play begins:
	prepare the command sidebar, shown automatically, on the left, suggested after blank commands;
	don't mention visited rooms;
	now the command prompt is "What is your name? > ".

To decide whether collecting names:
	if the command prompt is "What is your name? > ", yes;
	no.

does the player mean calling the Companion: it is likely.

After reading a command when collecting names:
	if the number of words in the player's command is greater than 5:
		say "[paragraph break]Who are you, a member of the British royal family? No one has that many names. Let's try this again.";
		reject the player's command;
	now the pname is the substituted form of the player's command;
	now the command prompt is ">";
	say "Hi, [pname]![paragraph break]";
	move the player to the Classroom;
	play the sound of alarm;
	reject the player's command.
	
Instead of looking when collecting names: do nothing.
Rule for constructing the status line when collecting names: do nothing.

Table of Custom Sidebar Commands (continued)
Displayed Command
"[bold type]Useful Commands"
" "
"[fixed letter spacing]   N"
"[fixed letter spacing]W  *  E"
"[fixed letter spacing]   S"
" "
"Look (L)"
"Go/Walk direction"
"Inventory (I)"
"Take/Drop something"
"Examine something"
"Use something"
"Call someone"
"Open/Close something"
"Push/Pull something"
"Put something in something"
"Put something on something"
"Wait (Z)"
"Talk to someone"
"?"
"When talking:"
"Ask for something"
"Ask about something"
"Topics"
"?"
"Help"
"Hint"
"Save/Restore"
"Quit (Q)"
"Exits on/off"
"[if the sidebar is allowing toggling]Sidebar on/off[end if]"

A person can be full or not full.

[Start Room Layout Definition]
The wooden door is a locked closed door.
The wooden door is west of the Classroom and east of the Hallway.
Classroom is a room.
The Locker Room is south of the Hallway.
The Central Hub is west of the Locker Room.
The west wing is west of the Central Hub.
The Computer Room is north of the west wing.
The Library is west of the west wing.
The Chemistry Lab is south of the Central Hub.
The Cafeteria is south of the Chemistry Lab.
The Exam Room is west of the Cafeteria.
[End Room Layout Definition]

[Start "Classroom" Definition]
The description of Classroom is "[if unvisited] You jolt awake at the sound of an abrasive alarm. Disoriented, you look around the warm room to see notes strewn across a large oak desk, formulas scribbled on a dusty chalkboard, and an unplugged computer terminal in the far corner of the room. As you stand up from the desk you notice that the chair across from you where companion was sitting is still empty. You think to yourself, [italic type] I should probably find where they are. [roman type] [otherwise] You look around the warm room to see notes strewn across a large oak desk, formulas scribbled on a dusty chalkboard, and an unplugged computer terminal in the far corner of the room."
A large oak desk is scenery in the Classroom.
A chair is scenery in the Classroom.
A computer terminal is scenery in the Classroom.
A chair is scenery in the Classroom.
A chalkboard is scenery in the Classroom.
A backpack is a closed openable container in the Classroom.
A phone is an object inside the backpack.

Check opening the locked wooden door:
	say “You walk towards the door to leave the study room, but the handle doesn’t turn. [italic type]Hmm, locked in? Maybe I should call companion and see if they can open it from the other side.[roman type]” instead.
[End "Classroom" Definition]

[Start "Hallway" Definition]
The Hallway is a room.
The description of Hallway is "[if unvisited]You briskly leave the room, aware that time is quickly ticking away every second. As you step into the hallway, you’re shocked to see the mess. You ask your friend, 'was this always here?' To which they simply shrug in response.[otherwise if boxes are blocking]A crowded hallway with boxes and papers all over the ground, there is a pile of boxes blocking the south exit.[otherwise]A crowded hallway with boxes and papers all over the ground."
Some boxes are in the Hallway. The boxes are fixed in place.
The boxes can be blocking or not blocking. The boxes are blocking.
Instead of pushing the boxes:
	say "Ugh its too heavy, maybe I should ask my companion for help".

Before going south:
	if the player is in the Hallway and the boxes is blocking:
    		say "You can't get past because of all of the boxes.";
		stop the action.
[End "Hallway" Definition]

[Start "Locker Room" Definition]
The Locker Room is a room.
The description of Locker Room is "[if unvisited] There is a row of lockers along the south wall, this is where you and your companion always store your suppies. [add password ask suggestion] [otherwise] There is a row of lockers along the south wall, this is where you and your companion always store your suppies.".

Your shared locker is an openable container in Locker Room.
pencil is inside Your shared locker.
The description of Your shared locker is "Your shared locker with a number combination lock."
Your shared locker can be locked or unlocked.  Your shared locker is locked.
Check opening the locked Your shared locker:
	say "You don't know the password, maybe you should ask your companion about it."
[End "Locker Room" Definition]

[Start "Central Hub" Definition]
The Central Hub is a room.
The description of Central Hub is "This is the main hub of the school, you are surprised you dont see anyone around, it must be too early.".
[End "Central Hub" Definition]

[Start "west wing" Definition]
The West Wing is a room.
The description of west wing is "It's called the wing but its pretty small, there are some couches in the center of the room."
Some couches are scenery in the west wing.
[End "west wing" Definition]

[Start "Computer Room" Definition]
The Computer Room is a room.
The description of Computer Room is "There are tons of computers in here, unfortunately you don't neeed to use any of them"
[End "Computer Room" Definition]

[Start "Library" Definition]
The Library is a room.
Some money is in Library.
The description of Library is "There are tons of books scattered about, looks like you were not the only one panic-studying"
[End "Library" Definition]

[Start "Chemistry Lab" Definition]
The Chemistry Lab is a room.
The description of Chemistry Lab is "Chemistry Lab"
[End "Chemistry Lab" Definition]

[Start "Cafeteria" Definition]
The Cafeteria is a room.
The description of Cafeteria is "You can smell a lot of delicious food in here, unfortunately only one shop is open. There are a bunch of tables scattered around the room and there is one employee working at McRonalds."

[Start Employee Definition]
food is a familiar thing.
where they were is a familiar thing.
Employee is a person in the Cafeteria.
The ask-suggestions are {food }.
Instead of requesting Employee for food:
	  if the money is carried:
		say "'What do you want to eat?' he replies' [line break] 'Two double cheeseburgers!' your companion exclaims' [line break] 'Coming up'";
		now the player is full;
		stop the action;
	otherwise:
		if the player is full:
			say "'You just ate, how could you be hungry again?' he replies";
		otherwise:
			say "You'll need some money first.".
		
After quizzing Employee about food:
	  if the money is carried:
		say "'What do you want to eat?' he replies' [line break] 'Two double cheeseburgers!' your companion exclaims' [line break] 'Coming up'";
		now the player is full;
		stop the action;
	otherwise:
		if the player is full:
			say "'You just ate, how could you be hungry again?' he replies";
		otherwise:
			say "You'll need some money first.".

Default ask response for the Employee:
	say "'We don't sell that here.' he replies.".
[End Employee Definition]
Before going west:
	if the player is in the Cafeteria:
		if the player is not full and the pencil is not carried:
			say "You have more things to do first, use your phone for to see the list.";
			stop the action;
		otherwise:
			end the story saying "You made it to the exam on time.".
[End "Cafeteria" Definition]

[Start "Exam Room" Definition]
The Exam Room is a room.
The description of Exam Room is "This room is purposely unreachable"
[End "Exam Room" Definition]

[Start "Use" Definition]
Using is an action applying to one carried thing. 
Understand "use [something]" as using.

Carry out using something:
	if the noun is the phone:
		say "There is a list in the notes app that says: [line break]-Get Pencil[line break]-Get food";
	otherwise:
		say "You can't use that.".
[End "Use" Definition]

[Start "Call" Definition]
Calling is an action applying to one visible thing.
Understand "call [any thing]" as calling.
	
Carry out calling someone:
	if player is carrying phone:
		if the noun is Companion:
			if player is in Classroom and wooden door is locked:
				now the Companion is ontheway;
				say "'You call them, but they don[']t answer. Fear and panic begin to set in as you realize your final exam begins in an hour, and your friend has disappeared… You decide to leave a voicemail: 'companion, where are you? I must have fallen asleep after you left for the bathroom, but why aren[']t you back? I’m locked in our study room and your bag is still here. Can you come let me out?' You end the call and anxiously hope they hear it in time, [italic type]I guess I’ll just have to wait…[roman type]";
			otherwise:
				say "'What are you doing? I'm right beside you,' says the Companion";
		otherwise:
			say "You can't call that person.";
	otherwise:
		say "You aren't carrying the phone.".
[End "Call" Definition]

[Start Companion Definition]

Companion is a person.
The ask-suggestions are {where they were }.
Companion can be following or not following. Companion is not following.

Every turn:
	if Companion is following:
		if the location of Companion is not the location of the player:
			let the way be the best route from the location of Companion to the location of the player, using even locked doors;
			try Companion going the way.
			
[Start imploring for help definition]
Instead of imploring companion for "help":
	if the player is in the Hallway and the boxes is blocking:
		say "Alright [pname], I'll help you out.[line break]You both pushed the boxes out of the way![remove where they were ask suggestion]";
		now the boxes are not blocking;
		stop the action;
	otherwise:
		say "What do you need help with [pname]?[line break] I don't see anything you need me to do in this room".
[End imploring for help definition]

[Start quizzing Companion about where they were definition]
After quizzing Companion about where they were:
	say "'Yeah, I do have something to ask you. What the hell companion, where have you been?! I fell asleep studying and you know we have our exam today, why didn’t you wake me!?'[paragraph break]Your friend laughs which annoys you even more since you don’t find the situation to be funny, but then they blurt out, 'I fell asleep too… on the toilet.' Suddenly your irritation begins to fade away and you start laughing with them. 'Alright,' you say, 'I guess I can forgive you this time. Come on, let’s get out of here.'".
[End quizzing Companion about where they were definition]

password is a familiar object.
[Start quizzing Companion about the password definition]
After quizzing Companion about password:
	now the your shared locker is unlocked;
	say "'You forgot our locker password?! Come on [pname], it's 5020. [remove password ask suggestion]".
	
Instead of requesting Companion for password:
	now the your shared locker is unlocked;
	say "'You forgot our locker password?! Come on [pname], it's 5020. [remove password ask suggestion]".
[End quizzing Companion about the password definition]


[This is not currently used.]
After quizzing Companion about food:
	say "'Oh yeah I'm starving', they reply.".

[Start Companion on the way definition]
Companion can be ontheway or not ontheway. Companion is not ontheway.
Instead of waiting:
	if the player is in the classroom and the wooden door is locked and the companion is ontheway:
		now the Companion is in the Classroom;
		now the Companion is following;
		now the wooden door is unlocked;
		now the wooden door is open;
		say "After a few brief moments, you hear a *click* and see the door swing open. companion strolls in casually as if nothing[']s happened, and you stare at them in bewilderment. [italic type]How can they be so calm right now?! Our final is starting soon, we don’t even have everything we need for it yet, and we have to walk all the way across campus![roman type]  Your companion smirks back at you and says, 'You look like you have something to ask me' [italic type]Do I ask them something or quit wasting time?'[roman type]".
[end Companion on the way definition]
[End Companion Definition]
