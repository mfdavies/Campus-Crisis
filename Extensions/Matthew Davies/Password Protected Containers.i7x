Password Protected Containers by Matthew Davies begins here.

A password-protected container is a kind of closed openable container.
It has a truth state called password given. Password given of a password-protected container is usually false.
It has a text called password. The password of a password-protected container is usually "password".
It has a text called password request. The password request of a password-protected container is usually "Please enter the password".
It has a text called prompt. The prompt of a password-protected container is usually "Password".
It has a text called password success. The password success of a password-protected container is usually "The lock pops open".
It has a text called password failure. The password failure of a password-protected container is usually "The lock doesn't budge".


[TODO: make all flavor text configurable on a per-container basis.]

Asking password is a truth state that varies.
Asking container is a password-protected container that varies.

To ask the password of (PPC - password-protected container):
	now asking container is PPC;
	now asking password is true;
	now the command prompt is "[the prompt of the asking container]>".
	
To stop asking the password:
	now the command prompt is ">";
	now asking password is false.

Instead of opening a password-protected container (called PPC) when password given of PPC is false:
	say "[the password request of the asking container].";
	ask the password of PPC.

After reading a command when asking password is true:
	If the player's command matches the text "[the password of the asking container]":
		say "[the password success of the asking container].";
		now password given of the asking container is true;
	otherwise:
		say "[the password failure of the asking container].";
	stop asking the password; 
	reject the player's command.


Password Protected Containers ends here.
