"Cloak of Darkness - Main"

<CONSTANT GAME-BANNER
"Cloak of Darkness|
A rewrite of the Roger Firth IF demonstration by Alex Proudfoot">

<CONSTANT RELEASEID 1> <VERSION ZIP>


"The Mechanics"

<ROUTINE GO ()
    <INIT> <MOVE PLAYER ,HERE>
    <CRLF> <V-VERSION>
    <CRLF> <V-LOOK>
    <MAIN-LOOP>
>

<INSERT-FILE "parser">


"The Game"

<ROUTINE INIT ()
    <SETG HERE FOYER>
>

<INSERT-FILE "Characters">
<INSERT-FILE "Locations">
