execute @a[score_TPHere_min=1] ~ ~ ~ function templex_standard:tpa_success

scoreboard players add @s TPSR 1
execute @s[score_TPSR_min=100] ~ ~ ~ function templex_standard:tpa_fail
