"Cloak of Darkness - Locations"

"Location - Foyer of the Opera House"

<ROOM FOYER (DESC "Foyer of the Opera House") (IN ROOMS)
    (LDESC "You are standing in a spacious hall, splendidly decorated in red
and gold, with glittering chandeliers overhead. The entrance from
the street is to the north, and there are doorways south and west.")
    (SOUTH TO BAR)
    (WEST TO CLOAKROOM)
    (FLAGS LIGHTBIT)
>


"Location - Cloakroom"

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
            <TELL "screwed to the wall.">
        )>
        <CRLF>)>
>


"Location - Foyer bar"

<ROOM BAR (DESC "Foyer bar") (IN ROOMS)
    (LDESC "The bar, much rougher than you'd have guessed after the opulence
of the foyer to the north, is completely empty. There seems to
be some sort of message scrawled in the sawdust on the floor.")
    (NORTH TO FOYER)
>
