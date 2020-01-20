"Cloak of Darkness - Main"

<CONSTANT GAME-BANNER
"Cloak of Darkness|
A rewrite of the Roger Firth IF demonstration by Alex Proudfoot">

<CONSTANT RELEASEID 1> <VERSION ZIP>


"The Mechanics"

<ROUTINE GO ()
    <SET-THE-SCENE>
    <INTRODUCE-THE-GAME>
    <CRLF> <V-VERSION>
    <CRLF> <V-LOOK>
    <MAIN-LOOP>
>

<INSERT-FILE "parser">

<INSERT-FILE "Actions">
<INSERT-FILE "Activities">


"The Game"

<ROUTINE SET-THE-SCENE ()
    <SETG HERE FOYER>
    <MOVE PLAYER ,HERE>
    <SETG MAX-SCORE 2>
>

<ROUTINE INTRODUCE-THE-GAME ()
    <TELL CR CR "Hurrying through the rainswept November night, you're glad to see the
bright lights of the Opera House. It's surprising that there aren't more
people about but, hey, what do you expect in a cheap demo game...?" CR>
>

<INSERT-FILE "Characters">
<INSERT-FILE "Locations">
<INSERT-FILE "Scenes">
