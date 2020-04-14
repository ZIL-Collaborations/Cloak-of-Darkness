"C L O A K   O F   D A R K N E S S  -  Locations File"

"FOYER OF THE OPERA HOUSE"

"The player character starts here. Exits are south to the foyer bar and west to
 the cloakroom."

<ROOM FOYER (DESC "Foyer of the Opera House") (IN ROOMS)
    (LDESC "You are standing in a spacious hall, splendidly decorated in red
and gold, with glittering chandeliers overhead. The entrance from
the street is to the north, and there are doorways south and west.")
    (SOUTH TO BAR)
    (WEST TO CLOAKROOM)
    (NORTH SORRY "You've only just arrived, and besides, the weather outside
seems to be getting worse.")
    (FLAGS LIGHTBIT)
>


"FOYER BAR"

"The foyer bar contains a message which must be read to finish the game but
 the room is not lighted at the start of the game."

<ROOM BAR (DESC "Foyer bar") (IN ROOMS)
    (LDESC "The bar, much rougher than you'd have guessed after the opulence
of the foyer to the north, is completely empty. There seems to
be some sort of message scrawled in the sawdust on the floor.")
    (NORTH TO FOYER)
    (ACTION BAR-F)
>

<OBJECT MESSAGE (DESC "scrawled message") (IN BAR)
    (SYNONYM MESSAGE SAWDUST FLOOR)
    (ACTION MESSAGE-F)
    (FLAGS NDESCBIT)
>


"CLOAKROOM"

"The cloakroom contains a hook for hanging the player character's cloak. This is
 the only room where the cloak can be left."

<ROOM CLOAKROOM (DESC "Cloakroom") (IN ROOMS)
    (LDESC "The walls of this small room were clearly once lined with hooks,
though now only one remains. The exit is a door to the east.")
    (EAST TO FOYER)
    (FLAGS LIGHTBIT)
>

<OBJECT HOOK (DESC "small brass hook") (IN CLOAKROOM)
    (ADJECTIVE SMALL BRASS) (SYNONYM HOOK PEG)
    (ACTION HOOK-EXAMINE-F)
    (FLAGS CONTBIT SURFACEBIT OPENBIT NDESCBIT)
>

<ROUTINE HOOK-EXAMINE-F ()
    <COND (<VERB? EXAMINE>
        <TELL "It's just a small brass hook, ">
        <COND (<IN? CLOAK HOOK>
            <TELL "with a cloak hanging on it.">)
        (ELSE
            <TELL "screwed to the wall.">)>
        <CRLF>)>
>
