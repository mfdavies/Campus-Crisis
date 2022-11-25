"Campus Crisis" by The Yellow Team

Include Common Commands Sidebar by Alice Grove.
Include Conversation Package by Eric Eve.
Include NPC Implicit Actions by Eric Eve.
Include Exit Lister by Gavin Lambert.
Include Password Protected Containers by Matthew Davies.

Use undo prevention.
Release along with a interpreter.
The pname is a text that varies.

When play begins:
	prepare the command sidebar, shown automatically, on the left, suggested after blank commands;
	don't mention visited rooms;
	now the command prompt is "What is your name? > ".

To decide whether collecting names:
	if the command prompt is "What is your name? > ", yes;
	no.

After reading a command when collecting names:
	if the number of words in the player's command is greater than 5:
		say "[paragraph break]Who are you, a member of the British royal family? No one has that many names. Let's try this again.";
		reject the player's command;
	now the pname is the substituted form of the player's command;
	now the command prompt is ">";
	say "Hi, [pname]![paragraph break]";
	move the player to the Study Room;
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
The wooden door is west of the Study Room and east of the Hallway. The wooden door is a locked door.
The red door is south of the Study Room and north of the Library. The red door is a unlocked door. [door will be locked]

The Central Hub is west of the Hallway.
The Locker Room is west of the Central Hub. [central hub to locker room will be one way]
The Gym is south of the Locker Room.

The Outdoors Garden is south of the Central Hub and east of the Gym.
The Cafeteria is southeast of the Outdoors Garden.
The Exam Room is southwest of the Outdoors Garden.

The Library is east of the Outdoors Garden.
The red stair is south of the Library and below the Computer Lab. The red stair is an open door. The red stair is not openable.

The Chemistry Lab is north of the Central Hub.
The blue stair is east of the Chemistry Lab and below the Nurses Room. The blue stair is an open door. The blue stair is not openable.

[End Room Layout Definition]

[Start "Study Room" Definition]
Study Room is a room.
The description of Study Room is "[if unvisited]You jolt awake at the sound of an abrasive alarm. Disoriented, you look around the warm room to see notes strewn across a large oak desk, formulas scribbled on a dusty chalkboard, and an unplugged computer terminal in the far corner of the room. As you stand up from your seat at the desk, you notice that the chair across from you where companion was sitting is still empty. You think to yourself, [italic type] I should probably find where they are. [roman type] [otherwise]You look around the warm room and see notes strewn across a large oak desk, formulas scribbled on a dusty chalkboard, and an unplugged computer terminal in the far corner of the room.".

A large oak desk is scenery in the Study Room. The description of the large oak desk is "You look at your mess of notes and cue cards covering the surface of the large oak desk. Some have writing, others are dauntingly blank and serve as an unfortunate reminder of your lack of preparation. [italic type]I wonder if any of these might be useful…[roman type]".

Some notes are scenery on the large oak desk. The description of the notes is "You sift through the pile of papers and uncover a small, pink sticky note that looks out of place. It appears to have an arrangement of numbers scribbled on it and nothing else.".
The pink sticky note is on the notes. The pink sticky note is undescribed. The description is "You look closer at the pink sticky note to reveal the numbers 5-0-2-0.".
After taking the pink sticky note, say "You take the pink sticky note. [italic type]Oh right, my locker combination! How do I always forget it...[roman type][paragraph break]".

A backpack is a closed openable container in the Study Room. The backpack is fixed in place. The description of the backpack is "The bronze coloured backpack is arguably far too small for a university student. It must be difficult to fit all of your academic materials into it.".
After opening the backpack, say "[italic type]Wow... my backpack's so empty. Where did I leave my exam materials?[roman type] You see your phone lying at the bottom of your bag. [italic type]This alarm is giving me a headache, I need to take my phone and shut it off[roman type].".
A phone is an object inside the backpack.
After taking phone, say "You pick up your phone and immediately dismiss the alarm. [italic type]Finally, now I can hear myself think. Maybe I should call companion and ask if they're okay...?[roman type] You notice that Let's Get This Bread is the most recently used app on your phone. [italic type]Oh right, my to do list[roman type]. Your stomach growls at the reference of delicious carbs.".

Check opening the locked wooden door:
	say “You walk towards the door to leave the study room, but the handle doesn’t turn. [italic type]Hmm, locked in? Maybe I should call companion and see if they can open it from the other side[roman type].” instead.
	
A chalkboard is scenery in the Study Room. The description of the chalkboard is "You notice a faded circle next to a calculus formula, along with a pun that reads, 'Why did Pi get its drivers license revoked? Because it didn’t know when to stop!' You lightly chuckle at the joke. [italic type]Funny, but not helpful.[roman type]".

A computer terminal is scenery in the Study Room. The description of the computer terminal is "Looking closer at the computer terminal you see that its cord is frayed, rendering the machine useless. [italic type]Looks dangerous to plug in, I better leave this broken terminal alone.[roman type]".

A your seat is scenery in the Study Room. The description of your seat is "[italic type]C'mon [pname], we can't even think about sitting right now [roman type].".

An empty chair is scenery in the Study Room. The description of the empty chair is "[italic type]I wonder where companion is...[roman type]".

[End "Study Room" Definition]

[Start "Hallway" Definition]
The Hallway is a room. The Hallway can be FirstTimeEnterHallway or not FirstTimeEnterHallway. The Hallway is FirstTimeEnterHallway.
The description of Hallway is "[node companion-intro-node][if wooden crates are blocking]Looking around the hallway you notice some large wooden crates blocking the south passageway. You glance to the other end of the hallway to see if anything might be useful, but all you see is an orange pylon with a taped on sign that reads 'CLOSED: USE OTHER EXIT,' and the trash your companion kicked over littered on the floor. [otherwise]You enter the hallway, still annoyed with the construction. [italic type]At least we were able to move the wooden crates.[roman type]".

After going to the hallway for the first time:
	say "You briskly leave the room, aware that time is quickly ticking away every second. As you step into the hallway, you’re shocked to see the mess. 'WHEN will they finish this construction? Tuition keeps going up, but we can’t even access half of campus. What a scam,' you agitatedly exclaim. Companion kicks over a garbage can in protest.";
	continue the action.

Some wooden crates are in the Hallway. The wooden crates are fixed in place.
The wooden crates can be blocking or not blocking. The wooden crates are blocking.
Instead of pushing the wooden crates:
	say "You attempt to move the wooden crates, but they’re too heavy. You exasperatedly turn to your friend and make a self-deprecating joke about your noodle arms. 'Heh, I’m starting to wish my parents signed me up for sports instead of band lessons when I was younger…' Your friend is distractedly looking down, popping bubble wrap they found on the floor. [italic type]*pop* *pop* *pop*[roman type]. You think to yourself, [italic type]What's wrong with them?[roman type]".
[End "Hallway" Definition]

[Start "Central Hub" Definition]
The Central Hub is a room.
The description of Central Hub is "Stepping into the large atrium, you feel a sense of relief hearing the quiet trickling of the fountain. It's too early for anyone else to be here, and the usually crowded area feels quite tranquil at this hour. The moonlight is pouring in from the glass dome, casting a shadow on the whole room."

A fountain is scenery in Central Hub. The description of the fountain is "Walking to the centre of the room, you stare up at the oddly ethereal fountain. It doesn't usually look this pretty, but the moonlight shining in from the glass ceiling is giving the fountain a faint glow.[italic type] I should make a wish.[roman type]".

A directory is scenery in Central Hub. The description of the directory is "Blurry eyed, you look at the directory. You read the names of rooms X, X, X."

A plant is scenery in central hub. The description of plant is "How lively."

A log bench is scenery in central hub. The description of log bench is "Right, the founder's bench. What does it say on the plaque?"

A plaque is scenery on the log bench. The description of the plaque is "Albert M. Ford."
[End "Central Hub" Definition]

[Start "Locker Room" Definition]
The Locker Room is a room.
The description of Locker Room is "[if unvisited] There is a row of lockers along the south wall, this is where you and your companion always store your supplies. [otherwise] There is a row of lockers along the south wall, this is where you and your companion always store your supplies.".

Your shared locker is a password-protected container.  Your shared locker is in Locker Room.
The password of Your shared locker is "5020".
The prompt of Your shared locker is "Combination".
The password failure of Your shared locker is "[italic type]I don't know the combination...[roman type] Maybe I should ask my companion about it.".
The password request of Your shared locker is "Please enter the combination".

pencil is inside Your shared locker.
The description of Your shared locker is "Your shared locker with a number combination lock.".
[End "Locker Room" Definition]

[Start "Gym" Definition]
The Gym is a room.
The description of the Gym is "This is the Gym".
[End "Gym" Definition]

[Start "Computer Lab" Definition]
The Computer Lab is a room.
The description of Computer Lab is "There are tons of computers in here, thankfully, you don't need to use any of them.".
[End "Computer Lab" Definition]

[Start "Library" Definition]
The Library is a room.
Some money is in Library.
The description of Library is "There are tons of books scattered about, looks like you were not the only one panic-studying.".
[End "Library" Definition]

[Start "Chemistry Lab" Definition]
The Chemistry Lab is a room.
The description of Chemistry Lab is "There are a few workbenches spread around the room with stools along them.".
Some workbenches are scenery in the Chemistry Lab.
Some stools are scenery in the Chemistry Lab.
[End "Chemistry Lab" Definition]

[Start "Nurses Room" Definition]
The Nurses Room is a room.
The description of the Nurses Room is "This is the Nurses Room". [placeholder]
[End "Nurses Room" Definition]

[Start "Outdoors Garden" Definition]
The Outdoors Garden is a room.
The description of the Outdoors Garden is "This is the Outdoors Garden". [placeholder]
[End "Outdoors Garden" Definition]

[Start "Cafeteria" Definition]
The Cafeteria is a room.
The description of Cafeteria is "You can smell a lot of delicious food in here, unfortunately only one shop is open. There are a bunch of tables scattered around the room and there is one employee working at McRonalds."

[Start Employee Definition]
Employee is a person in the Cafeteria.

food-suggestion is a misc-suggestion.
The printed name of food-suggestion is "ask them for/about food".
The other-suggestions of Employee are {food-suggestion}.


[Start ask about/for food]
response for Employee when asked for "food":
	  if the money is carried:
		say "'What do you want to eat?' he replies' [line break] 'Two double cheeseburgers!' your companion exclaims' [line break] 'Coming up.'";
		now the player is full;
		[stop the action; I dont think this is needed]
	otherwise:
		if the player is full:
			say "'You just ate, how could you be hungry again?' he replies.";
		otherwise:
			say "You'll need some money first.".
		
response for Employee when asked about "food":
	  if the money is carried:
		say "'What do you want to eat?' he replies' [line break] 'Two double cheeseburgers!' your companion exclaims' [line break] 'Coming up.'";
		now the player is full;
		[stop the action; I dont think this is needed]
	otherwise:
		if the player is full:
			say "'You just ate, how could you be hungry again?' he replies.";
		otherwise:
			say "You'll need some money first.".
[End ask about/for food]

Default ask response for the Employee:
	say "'We don't sell that here.' he replies.".
	
Default response for the Employee:
	say "'I can't be bothered to figure out what you meant by that. We just serve food here.' he replies.".
[End Employee Definition]
[End "Cafeteria" Definition]

[Start "Exam Room" Definition]
The Exam Room is a room.
The description of Exam Room is "This room is purposely unreachable.".
[End "Exam Room" Definition]

[Start "Use" Definition]
Using is an action applying to one carried thing. 
Understand "use [something]" as using.

Carry out using something:
	if the noun is the phone:
		say "There is a list in the notes app that says: [line break]-Get Pencil[line break]-Get food[paragraph break]";
	otherwise:
		say "You can't use that.".
[End "Use" Definition]

[Start "Call" Definition]
Calling is an action applying to one visible thing.
Understand "call [any thing]" as calling.

Does the player mean calling the Companion: it is likely.

Carry out calling someone:
	if player is carrying phone:
		if the noun is Companion:
			if player is in Study Room and wooden door is locked:
				now the Companion is ontheway;
				say "You call them, but they don[']t answer. Fear and panic begin to set in as you realize your final exam begins in an hour, and your friend has disappeared… You decide to leave a voicemail: 'companion, where are you? I must have fallen asleep after you left for the bathroom, but why aren[']t you back? I’m locked in our study room and your bag is still here. Can you come let me out?' You end the call and anxiously hope they hear it in time, [italic type]I guess I’ll just have to wait...[roman type][paragraph break]";
			otherwise:
				say "'What are you doing? I'm right beside you,' says the Companion";
		otherwise:
			say "You can't call that person.";
	otherwise:
		say "You aren't carrying the phone.".
[End "Call" Definition]


[Start Companion Definition]
Companion is a person.

[General Suggestions]
help-suggestion is a misc-suggestion.
The printed name of help-suggestion is "ask them for help".
The other-suggestions of Companion are {help-suggestion}.
[Convonodes]
The companion-help-node is a closed convnode.
wtw-suggestion is a misc-suggestion.
The printed name of wtw-suggestion is "ask them about where they were".
The companion-intro-node is a closed convnode.
The other-suggestions of companion-intro-node are {wtw-suggestion}.

[Start Companion following definition]
Companion can be following or not following. Companion is not following.

Every turn:
	if Companion is following:
		if the location of Companion is not the location of the player:
			let the way be the best route from the location of Companion to the location of the player, using even locked doors;
			try Companion going the way.
[End Companion following definition]	

[Start Companion where they were definition (Takes place in the study room)]
response for companion-intro-node when asked about "where they were":
	say "[remove wtw-suggestion other suggestion]'Yeah, I do have something to ask you. What the hell companion, where have you been?! I fell asleep studying and you know we have our exam today, why didn’t you wake me!?'[paragraph break]Your friend laughs, which annoys you even more since you don’t find the situation to be funny, but then they blurt out, 'I fell asleep too… on the toilet.' Suddenly, your irritation begins to fade away and you start laughing with them. 'Alright,' you say, 'I guess I can forgive you this time. Come on, let’s get out of here.'[leavenode]".
	
default response for companion-intro-node:
	say "'Huh? what are you talking about? Did you mean to ask me where I was?' Your companion replies.".
[End Companion where they were definition]

[Start asking for help definition] [This will need to be handled per room, and will only be suggested when no nodes are active]
response for companion when asked for "help":
	if the player is in the Hallway and the wooden crates is blocking:
		say "Alright [pname], I'll help you out.[paragraph break]Together, you pick up the heavy crates one by one and move them across the hall. Wiping sweat off your forehead, you're relieved to see the path's now clear.";
		now the wooden crates are not blocking;
		stop the action;
	otherwise:
		say "What do you need help with [pname]?[line break] I don't see anything you need me to do in this room.".
[End asking for help definition]

[Start quizzing companion in hallway definition] [I'm not sure what to do with theses -Matt]
What's wrong is a familiar thing.
After quizzing companion about what's wrong:
	say "'Hey companion, are you alright? You seem preoccupied.' Companion doesn't look up from their bubble wrap, but they do let out a heavy sigh. [italic type]What was THAT about?[roman type][paragraph break]".
	
Sigh is a familiar thing.
After quizzing companion about sigh:
	say "'We've been friends long enough for me to know when something's on your mind, seriously, what is it?' 'Well,' they begin, 'I'm kind of glad this is happening.' Your concern slowly fades and frustration builds in you once more,[italic type] They're GLAD?[roman type]".
[End quizzing companion in hallway definition]

[Start asking Companion for/about the locker combination definition]
response for companion when asked about "locker combination":
	say "'You forgot our locker combination?! Come on [pname]... I wrote it down on a pink note, maybe its somewhere in the study room.'[paragraph break]".
	
response for companion when asked for "locker combination":
	say "'You forgot our locker combination?! Come on [pname]... I wrote it down on a pink note, maybe its somewhere in the study room.'[paragraph break]".
[End asking Companion about the locker combination definition]

[This is not currently used.]
response for companion when asked about "food":
	say "Oh yeah I'm starving', they reply.".

[Start Companion on the way definition]
Companion can be ontheway or not ontheway. Companion is not ontheway.
Instead of waiting:
	if the player is in the Study Room and the wooden door is locked and the companion is ontheway:
		now the Companion is in the Study Room;
		now the Companion is following;
		now the wooden door is unlocked;
		now the wooden door is open;
		initiate a conversation with Companion at companion-intro-node;
		say "After a few brief moments, you hear a *[italic type]click[roman type]* and see the door swing open. companion strolls in casually as if nothing[']s happened, and you stare at them in bewilderment. [italic type]How can they be so calm right now?! Our final is starting soon, we don’t even have everything we need for it yet, and we have to walk all the way across campus![roman type] Your companion smirks back at you and says, 'You look like you have something to ask me?' [italic type]Do I ask them about where they were or quit wasting time?'[roman type][paragraph break]".
[end Companion on the way definition]
[End Companion Definition]

[Start Before going In a direction]
Before going southwest:
	if the player is in the Outdoors Garden:
		if the player is not full and the pencil is not carried:
			say "You have more things to do first, use your phone for to see the list.";
			stop the action;
		otherwise:
			end the story saying "You made it to the exam on time.".

Before going west:
	if the player is in the Hallway and the wooden crates is blocking:
		say "You can't get past because of the wooden crates.";
		stop the action.
[End Before going In a direction]