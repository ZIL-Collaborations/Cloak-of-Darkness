"C L O A K   O F   D A R K N E S S  -  Scenes File"

"BLUNDERING AROUND IN THE DARK"

"While the player is in darkness, in the foyer bar, this game gives strikes
 which count towards losing. Two strikes are given for going in any direction
 other than north and one strike is given for doing anything other than going."

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


"BRINGING LIGHT TO THE DARKNESS"

"The foyer bar is only lighted when the player is neither wearing nor carrying
 the velvet cloak."

"Putting the velvet cloak on the small brass hook lights the foyer bar. One
 point is awarded for doing it the first time."

"Dropping the velvet cloak in the cloakroom lights the foyer bar. Dropping it
 elsewhere is not allowed."

"Picking up the velvet cloak makes the foyer bar dark again."

<GLOBAL CLOAK-HUNG <>>

<ROUTINE CLOAK-F ()
    <COND (<VERB? PUT-ON>
        <COND (<NOT ,CLOAK-HUNG>
            <SETG CLOAK-HUNG T>
            <SETG SCORE <+ ,SCORE 1>>)>
        <FSET BAR ,LIGHTBIT>
        <RFALSE>)
    (<VERB? DROP>
        <COND (<=? ,HERE CLOAKROOM>
            <FSET BAR ,LIGHTBIT>
            <RFALSE>)
        (ELSE
            <TELL "This isn't the best place to leave a smart cloak lying
around." CR>
            <RTRUE>)>)
    (<VERB? TAKE>
        <FCLEAR BAR ,LIGHTBIT>
        <RFALSE>)>
>


"READING THE SCRAWLED MESSAGE"

"The goal is to read the scrawled message in the foyer bar with the maximum
 score of two points and fewer than two strikes. Any action on the message
 results in reading the message."

"One point is awarded and the game is won for reading the message with fewer
 than two strikes. The game is lost for reading the message with two strikes or
 more."

<ROUTINE MESSAGE-F ()
    <COND (<L? ,STRIKES 2>
        <SETG SCORE <+ ,SCORE 1>>
        <TELL "The message, neatly marked in the sawdust, reads..." CR CR>
        <SETG FINISH-CODE 1>)
    (ELSE
        <TELL "The message has been carelessly trampled, making it difficult to
read. You can just distinguish the words..." CR CR>
        <SETG FINISH-CODE 2>)>
    <RTRUE>
>
