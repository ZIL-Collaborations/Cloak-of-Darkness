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
    <TELL CR "Hurrying through the rainswept November night, you're glad to see the
bright lights of the Opera House. It's surprising that there aren't more
people about but, hey, what do you expect in a cheap demo game...?" CR>
>

<INSERT-FILE "Characters">
<INSERT-FILE "Locations">
<INSERT-FILE "Scenes">
