"Cloak of Darkness - Main"

<CONSTANT GAME-BANNER
"Cloak of Darkness|
A rewrite of the Roger Firth IF demonstration by Alex Proudfoot">

<CONSTANT RELEASEID 1> <VERSION ZIP>


"The Mechanics"

<ROUTINE GO ()
    <SETG HERE DARKNESS>
    <INIT> <MOVE PLAYER ,HERE>
    <CRLF> <V-VERSION>
    <CRLF> <V-LOOK>
    <MAIN-LOOP>
>

<ROOM DARKNESS (IN ROOMS) (DESC "Darkness")
    (LDESC "It is pitch black. You can't see a thing.")
>

<INSERT-FILE "parser">


"The Game"

<ROUTINE INIT ()
    <RETURN>
>
