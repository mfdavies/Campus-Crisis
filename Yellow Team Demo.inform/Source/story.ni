"Yellow Team Demo" by Matt

Include Common Commands Sidebar by Alice Grove.
Include Conversation Package by Eric Eve.
Include NPC Implicit Actions by Eric Eve.
Use undo prevention.

When play begins:
	 prepare the command sidebar, shown automatically, on the left, suggested after blank commands.

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
"[if the sidebar is allowing toggling]Sidebar on/off[end if]"

[Start Room Layout Definition]
The wooden door is an closed door.
The wooden door is west of the Classroom and east of the Hallway.

The Computer Room is north of the Hallway.
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
The description of Hallway is "A crowded hallway with boxes blocking the exit."
The box are scenery in the Hallway.
The box can be blocking or not blocking. The box is blocking.
Instead of pushing the box:
	say "You moved the box out of the way!";
	now the box is not blocking.

Before going north:
	if the player is in the Hallway and the box is blocking:
    		say "You can't get past because of all of the boxes.";
		stop the action.
[End "Hallway" Definition]

[Start "Computer Room" Definition]
The Computer Room is a room.
The description of Computer Room is "It looks like a nerds heaven."
[End "Computer Room" Definition]

[Start "Puzzle Room 1" Definition]
The Puzzle Room 1 is a room.
The description of Puzzle Room 1 is "puzzle room 1 placeholder."
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
Using is an action applying to one thing. 
Understand "use [something]" as using.

Carry out using something:
	if the noun is the phone:
		if the player carries the phone:
			say "There is a list in the notes app that says: [line break]-Get Pencil[line break]-Get Binder[line break]-Print Notes";
		otherwise:
			say "You aren't carrying the phone.";
	otherwise:
		say "You can't use that.".
[End "Use" Definition]

