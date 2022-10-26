"Yellow Team Demo" by Matt

Include Common Commands Sidebar by Alice Grove.

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
"About"
"Help"
"Hint"
"Save/Restore"
"Quit (Q)"
"[if the sidebar is allowing toggling]Sidebar on/off[end if]"

Classroom is a room.
The description of Classroom is "[if unvisited]'Hey, hey wake up! We fell asleep!' You groggily awaken, fleeting thoughts of your dreams slowly dissipate from your memory as you begin to recall where you are. You look around the room calmly for a moment, then reality sets in. Your eyes widen and the panic hits you… You fell asleep studying and your exam is in… wait, what time is it? [otherwise]Here's the text for every other time you enter the room."
A desk are scenery in the Classroom.
A backpack is a closed openable container in the Classroom.
A phone is an object inside the backpack.
The normal door is a door.
The normal door is an closed door.
The normal door is north of the Classroom and south of the Computer Room.
The Computer Room is a room."It looks like a nerds heaven"

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

[test]
[>CHECK YOUR PHONE (1)
#>ASK YOUR FRIEND (2)
#(1). You quickly fumble through your backpack for your phone, but you can’t seem to find it within the mess of your cue cards, #snacks, and empty energy drink cans. Frustrated, you turn to your friend & exasperatedly ask for the time. ]
