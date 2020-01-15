"Cloak of Darkness - Scenes"

"Scene - Exploring the Opera House"

"The only way is west ... "

"See the FOYER exits. The BAR is dark."


"Scene - Winning the Game"

"Dropping the cloak or putting it on the hook ... "

<ROUTINE CLOAK-F ()
    <COND (<OR <VERB? DROP> <VERB? PUT-ON>>
        <COND (<=? ,HERE CLOAKROOM>
            <FSET BAR ,LIGHTBIT>
            <COND (<AND <VERB? PUT-ON> <FSET? CLOAK ,GENERAL>>
                <FCLEAR CLOAK ,GENERAL>
                <SETG SCORE <+ ,SCORE 1>>)>
            <RFALSE>)
        (ELSE
            <TELL "This isn't the best place to leave a smart cloak
lying around." CR>
            <RTRUE>)>)
    (ELSE
        <RFALSE>)>
>


"Reading the message ... "

<ROUTINE MESSAGE-F ()
    <COND (<L? <GETP MESSAGE ,P?NUMBER> 2>
        <SETG SCORE <+ ,SCORE 1>>
        <TELL "The message, neatly marked in the sawdust, reads..." CR CR>
        <JIGS-UP "You have won!">)
    (ELSE
        <TELL "The message has been carelessly trampled, making it
difficult to read. You can just distinguish the words..." CR CR>
        <JIGS-UP "You have lost!">)>
>


"Scene - Losing the Game"

"Doing things in the dark ... "

<ROUTINE BAR-F (RARG)
    <COND (<=? .RARG ,M-BEG>
        <COND (<VERB? WALK>
            <COND (<AND <NOT <FSET? BAR ,LIGHTBIT>> <NOT <=? ,PRSO ,P?NORTH>>>
                <PUTP MESSAGE ,P?NUMBER <+ <GETP MESSAGE ,P?NUMBER> 2>>
                <TELL "Blundering around in the dark isn't a good idea!" CR>
                <RTRUE>)>
            <RFALSE>)
        (ELSE
            <COND (<NOT <FSET? BAR ,LIGHTBIT>>
                <PUTP MESSAGE ,P?NUMBER <+ <GETP MESSAGE ,P?NUMBER> 1>>
                <TELL "In the dark? You could easily disturb something!" CR>
                <RTRUE>)>
            <RFALSE>)>)>
>
