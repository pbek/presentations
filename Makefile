watch:
	marp -wsp .

term:
	zellij --layout term.kdl attach presentations -cf

term-kill:
	zellij delete-session presentations -f
