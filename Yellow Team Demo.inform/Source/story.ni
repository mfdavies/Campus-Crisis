"Yellow Team Demo" by Matt

Include Common Commands Sidebar by Alice Grove.
Include Conversation Package by Eric Eve.
Include NPC Implicit Actions by Eric Eve.
Include Exit Lister by Gavin Lambert.

Use undo prevention.

When play begins:
	prepare the command sidebar, shown automatically, on the left, suggested after blank commands;
	don't mention visited rooms.

Table of Custom Sidebar Commands (continued)
Displayed Command
"[bold type]Useful Commands"
" "
"[fixed letter spacing]     N"
"[fixed letter spacing]  NW   NE"
"[fixed letter spacing]W    *    E"
"[fixed letter spacing]  SW   SE"
"[fixed letter spacing]	    S"
" "
"Look (L)"
"Inventory (I)"
"Take/Drop something"
"Examine (X) it"
"Open/Close it"
"Push/Pull it"
"Put it in something"
"Put it on something"
"Wait (Z)"
"?"
"Help"
"Hint"
"Save/Restore"
"Quit (Q)"
"Exits on/off"
"[if the sidebar is allowing toggling]Sidebar on/off[end if]"

[Start Room Layout Definition]
The wooden door is a closed door.
The wooden door is west of the Classroom and east of the Hallway.

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
Classroom is a room.
The description of Classroom is "[if unvisited]'Hey, hey wake up! We fell asleep!' You groggily awaken, fleeting thoughts of your dreams slowly dissipate from your memory as you begin to recall where you are. You look around the room calmly for a moment, then reality sets in. Your eyes widen and the panic hits you… You fell asleep studying and your exam is in… wait, what time is it? [otherwise]Here's the text for every other time you enter the room."
A desk is scenery in the Classroom.
A backpack is a closed openable container in the Classroom.
A phone is an object inside the backpack.
[End "Classroom" Definition]


[Start "Hallway" Definition]
The Hallway is a room.
The description of Hallway is "[if boxes are blocking]A crowded hallway with boxes blocking the south exit.[otherwise]A crowded hallway."
Some boxes are in the Hallway. The boxes are fixed in place.
The boxes can be blocking or not blocking. The boxes are blocking.
Instead of pushing the boxes:
	if the boxes are blocking:
		say "You moved the boxes out of the way!";
		now the boxes are not blocking.

Before going south:
	if the player is in the Hallway and the boxes is blocking:
    		say "You can't get past because of all of the boxes.";
		stop the action.
[End "Hallway" Definition]

[Start "Puzzle Room 1" Definition]
The Puzzle Room 1 is a room.
The description of Puzzle Room 1 is "Your locker with a num lock."
<<<<<<< Updated upstream
Your locker and your Companion's locker are scenery in the Puzzle Room 1.
Your locker and Companion's locker can be locked or unlocked. Your locker and Companion's locker are locked.
=======
Your locker are scenery in the Puzzle Room 1.
Your locker can be locked or unlocked. Your locker is locked.
>>>>>>> Stashed changes

If player is trying to open the locker:
	say "password of nun lock?";
	now the locker is still locked.
<<<<<<< Updated upstream
	if the input is XXX:
		now the locker is still locked.
		

If player is trying to open companion's locker:
	say "ask companion for the password "
	now the locker is still locked.
	if the input is XXX:
		now the locker is still locked.

=======
>>>>>>> Stashed changes

Before going west:
	say "I need to open my locker get my stuff";
	stop the action.
<<<<<<< Updated upstream
=======

>>>>>>> Stashed changes
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
[End "Puzzle Room 2" Definition]

[Start "Puzzle Room 3" Definition]
The Puzzle Room 3 is a room.
The description of Puzzle Room 3 is "Puzzle Room 3 placeholder."
[End "Puzzle Room 3" Definition]

[Start "Puzzle Room 4" Definition]
The Puzzle Room 4 is a room.
The description of Puzzle Room 4 is "Puzzle Room 4 placeholder."
[End "Puzzle Room 4" Definition]

[Start "Cafeteria" Definition]
The Cafeteria is a room.
The description of Cafeteria is "Cafeteria placeholder."
[End "Cafeteria" Definition]

[Start "Exam Room" Definition]
The Exam Room is a room.
The description of Exam Room is "Exam Room placeholder."
[End "Exam Room" Definition]

[Start "Use" Definition]
Using is an action applying to one carried thing. 
Understand "use [something]" as using.

Carry out using something:
	if the noun is the phone:
		say "There is a list in the notes app that says: [line break]-Get Pencil[line break]-Get Binder[line break]-Print Notes";
	otherwise:
		say "You can't use that.".
[End "Use" Definition]

[Start "Call" Definition]
Calling is an action applying to one visible thing.
Understand "call [any thing]" as calling.

Carry out calling someone:
	if player is carrying phone:
		if the noun is Companion:
			[TODO - Classroom is initially locked and Companion unlocks the door from the outside;
			calls after the first should have different behaviour]
			now the Companion is in the Classroom;
			now the Companion is following;
			say "'Hi Companion. I need some help, can you come to the Classroom?'[paragraph break]
				 Soon after, the companion				 enters the room and greets you.";
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

[End Companion Definition]

<<<<<<< Updated upstream
[Start Start Room Definition]
Start Room is a room.
The description of Start Room is "Create Your Character and Your Companion."
[End Start Room Definition]
=======
[Start "StartRoom" Definition]
Start room is a room. 
The description of Start room is "Create your character. "

[End "StartRoom" Definition]
>>>>>>> Stashed changes
