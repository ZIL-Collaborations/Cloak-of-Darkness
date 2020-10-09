"C L O A K   O F   D A R K N E S S  -  Main File"

"THE PROJECT"

<CONSTANT GAME-BANNER
"Cloak of Darkness|
A rewrite of the Roger Firth IF demonstration by Alex Proudfoot">

<CONSTANT RELEASEID 1> <VERSION ZIP>


"THE MECHANICS"

"Startup"

<ROUTINE GO ()
    <SET-THE-SCENE>
    <INTRODUCE-THE-GAME>
    <MAIN-LOOP>
>

"Library and Extensions"

<INSERT-FILE "parser">
<INSERT-FILE "../Extensions/Scoring">
<INSERT-FILE "../Extensions/Finishing">

"Game Specific Interaction and Behaviour - NONE"

"Extra Game Verbs"

<SETG EXTRA-GAME-VERBS
   '(NOTIFY-OFF NOTIFY-ON SCORE ;"from Scoring"
    )
>

"Library Hooks"

<BIND ((REDEFINE T))
    <DEFMAC HOOK-END-OF-COMMAND ()
       '<BIND ()
            <NOTIFY-IF-SCORE-UPDATED> ;"from Scoring"
            <FINISH-IF-CODE-SET>      ;"from Finishing"
        >
    >
>


"THE GAME"

"Setting the Scene"

<ROUTINE SET-THE-SCENE ()
    <SETG HERE FOYER>
    <MOVE PLAYER ,HERE>
    <SETG MAX-SCORE 2>
>

"Introduction"

<ROUTINE INTRODUCE-THE-GAME ()
    <TELL CR CR "Hurrying through the rainswept November night, you're glad to see the
bright lights of the Opera House. It's surprising that there aren't more
people about but, hey, what do you expect in a cheap demo game...?" CR>
    <CRLF> <V-VERSION>
    <CRLF> <V-LOOK>
>

"Cast, Setting and Plot"

<INSERT-FILE "Characters">
<INSERT-FILE "Locations">
<INSERT-FILE "Scenes">
