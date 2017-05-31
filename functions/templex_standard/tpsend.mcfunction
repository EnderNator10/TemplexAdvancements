execute @a[score_TPHere_min=1] ~ ~ ~ function templex_standard:tpa_success

scoreboard players add @s TPSR 1
execute @p[score_TPSR=1,r=1] ~ ~ ~ tellraw @s [{"text":"TPSend request sent.","color":"green"},{"text":"\nNow tell the other person to type ","color":"gray"},{"text":"\"","color":"dark_gray"},{"text":"/","color":"aqua"},{"text":"trigger TPHere set 1","color":"gold"},{"text":"\"","color":"dark_gray"},{"text":".","color":"gray"},{"text":"\nThey have five seconds to send their request.","color":"red"}]
execute @p[score_TPSR_min=100,r=1] ~ ~ ~ function templex_standard:tpa_fail
