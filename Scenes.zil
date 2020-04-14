"C L O A K   O F   D A R K N E S S  -  Scenes File"

"WINNING THE GAME"

"Goal"

"The goal is to read the message in the foyer bar with the maximum score of two
 points and fewer than two strikes. With two or more strikes, the game is lost.
 Any action on the message results in reading the message."

"One point is awarded for reading the message with fewer than two strikes."

<ROUTINE MESSAGE-F ()
    <COND (<L? ,STRIKES 2>
        <SETG SCORE <+ ,SCORE 1>>
        <TELL "The message, neatly marked in the sawdust, reads..." CR CR>
        <SETG FINISH-CODE 1>)
    (ELSE
        <TELL "The message has been carelessly trampled, making it
difficult to read. You can just distinguish the words..." CR CR>
        <SETG FINISH-CODE 2>)>
    <RTRUE>
>

"Puzzle"

"The foyer bar is only lighted when the player character is no longer wearing or
 carrying the cloak."

"One point is awarded for hanging the cloak on the hook instead of just
 dropping it in the cloakroom."

<GLOBAL CLOAK-HUNG <>>

<ROUTINE CLOAK-F ()
    <COND (<OR <VERB? DROP> <VERB? PUT-ON>>
        <COND (<=? ,HERE CLOAKROOM>
            <FSET BAR ,LIGHTBIT>
            <COND (<AND <VERB? PUT-ON> <NOT ,CLOAK-HUNG>>
                <SETG CLOAK-HUNG T>
                <SETG SCORE <+ ,SCORE 1>>)>
            <RFALSE>)
        (ELSE
            <TELL "This isn't the best place to leave a smart cloak
lying around." CR>
            <RTRUE>)>)>
>

"Strikes are awarded for ...
 1. moving in any direction other than north in the foyer bar while in darkness
    (2 strikes)
 2. doing anything other than moving in the foyer bar while in darkness
    (1 strike)"

<GLOBAL STRIKES 0>

<ROUTINE BAR-F (RARG)
    <COND (<=? .RARG ,M-BEG>
        <COND (<VERB? WALK>
            <COND (<AND <NOT <FSET? BAR ,LIGHTBIT>> <NOT <=? ,PRSO ,P?NORTH>>>
                <SETG STRIKES <+ ,STRIKES 2>>
                <TELL "Blundering around in the dark isn't a good idea!" CR>
                <RTRUE>)>
            <RFALSE>)
        (ELSE
            <COND (<NOT <FSET? BAR ,LIGHTBIT>>
                <SETG STRIKES <+ ,STRIKES 1>>
                <TELL "In the dark? You could easily disturb something!" CR>
                <RTRUE>)>
            <RFALSE>)>)>
>
