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
The Puzzle Room 1 is south of the Hallway.
The Central Hub is west of the Puzzle Room 1.
The Temp 1 is west of the Central Hub.
The Puzzle Room 2 is north of the Temp 1.
The Puzzle Room 3 is west of the Temp 1.
The Puzzle Room 4 is south of the Central Hub.
The Cafeteria is south of the Puzzle Room 4.
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
	say “You walk towards the door to leave the study room, but the handle doesn’t turn. [italic type] Hmm, locked in? Maybe I should call companion and see if they can open it from the other side. [roman type]” instead.
[End "Classroom" Definition]

[Start "Hallway" Definition]
The Hallway is a room.
The description of Hallway is "[if boxes are blocking]A crowded hallway with boxes blocking the south exit.[otherwise]A crowded hallway."
Some boxes are in the Hallway. The boxes are fixed in place.
The boxes can be blocking or not blocking. The boxes are blocking.
Instead of pushing the boxes:
	say "Ugh its too heavy, maybe I should ask my companion for help".
	
Before going south:
	if the player is in the Hallway and the boxes is blocking:
    		say "You can't get past because of all of the boxes.";
		stop the action.
[End "Hallway" Definition]

[Start "Puzzle Room 1" Definition]
The Puzzle Room 1 is a room.
The description of Puzzle Room 1 is "There is a row of lockers. You are here for your stuff and your companion's wallet"

Companion's locker is an openable container in Puzzle Room 1.
Companion's wallet is inside Companion's locker.
The description of Companion's locker is "Your Companion's locker with a number combination lock."
Companion's locker are scenery in the Puzzle Room 1.
Companion's locker can be locked or unlocked.  Companion's locker are locked.
Instead of opening Companion's locker:
	say "You don't know the password of the num lock, Call your companion asking for the password."

[End "Puzzle Room 1" Definition]

[Start "Central Hub" Definition]
The Central Hub is a room.
The description of Central Hub is "central hub placeholder."
[End "Central Hub" Definition]

[Start "Temp 1" Definition]
The Temp 1 is a room.
The description of Temp 1 is "Temp 1 placeholder."
[End "Temp 1" Definition]

[Start "Puzzle Room 2" Definition]
The Puzzle Room 2 is a room.
The description of Puzzle Room 2 is "Puzzle Room 2 placeholder."
A pencil is in Puzzle Room 2.
[End "Puzzle Room 2" Definition]

[Start "Puzzle Room 3" Definition]
The Puzzle Room 3 is a room.
The description of Puzzle Room 3 is "Puzzle Room 3 placeholder."
[End "Puzzle Room 3" Definition]

[Start "Puzzle Room 4" Definition]
The Puzzle Room 4 is a room.
The description of Puzzle Room 4 is "Puzzle Room 4 placeholder."
Some money is in Puzzle Room 4.
[End "Puzzle Room 4" Definition]

[Start "Cafeteria" Definition]
The Cafeteria is a room.
The description of Cafeteria is "You can smell a lot of delicious food in here, unfortunately only one shop is open. There are a bunch of tables scattered around the room and there is one employee working at McRonalds."

[Start Employee Definition]
food is a familiar thing.
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
				if player is in Puzzle Room 1 and Companion's locker is locked:
					now the Companion's locker is unlocked;
					say "'You forgot my locker password?! It's 5020";
				otherwise:
					say "'What are you doing? I'm right beside you,' says the Companion";
		otherwise:
			say "You can't call that person.";
	otherwise:
		say "You aren't carrying the phone.".
[End "Call" Definition]

[Start Companion Definition]

Companion is a person.
Companion can be following or not following. Companion is not following.

Every turn:
	if Companion is following:
		if the location of Companion is not the location of the player:
			let the way be the best route from the location of Companion to the location of the player, using even locked doors;
			try Companion going the way;
			
amanda is a familiar thing.
[The ask-suggestions are {  self-suggestion, amanda}.]
[Start imploring for help definition]
Instead of imploring companion for "help":
	if the player is in the Hallway and the boxes is blocking:
		say "Alright [pname], I'll help you out.[line break]You both pushed the boxes out of the way!";
		now the boxes are not blocking;
		stop the action;
	otherwise:
		say "What do you need help with [pname]?[line break] I don't see anything you need me to do in this room".
[End imploring for help definition]

After quizzing Companion about amanda:
	say "Yeah, I do have something to ask you. What the hell companion, where have you been?! I fell asleep studying and you know we have our exam today, why didn’t you wake me!?[paragraph break]Your friend laughs which annoys you even more since you don’t find the situation to be funny, but then they blurt out, 'I fell asleep too… on the toilet.' Suddenly your irritation begins to fade away and you start laughing with them. 'Alright,' you say, 'I guess I can forgive you this time. Come on, let’s get out of here.' [remove amanda ask suggestion]".
	


Default ask response for the companion:
	say "'[one of]This really isn't the best time to discuss that[or]I'd rather not talk about that right now[or]You should focus on getting your supplies for this exam[in random order],' he replies.".
	


Companion can be ontheway or not ontheway. Companion is not ontheway.
Instead of waiting:
	if the player is in the classroom and the wooden door is locked and the companion is ontheway:
		now the Companion is in the Classroom;
		now the Companion is following;
		now the wooden door is unlocked;
		now the wooden door is open;
		say "After a few brief moments, you hear a *click* and see the door swing open. companion strolls in casually as if nothing[']s happened, and you stare at them in bewilderment. [italic type]How can they be so calm right now?! Our final is starting soon, we don’t even have everything we need for it yet, and we have to walk all the way across campus![roman type]  Your companion smirks back at you and says, 'You look like you have something to ask me' [italic type]Do I ask them something or quit wasting time?'[roman type]".
[End Companion Definition]
