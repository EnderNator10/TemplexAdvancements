execute @a[score_TPSend_min=1] ~ ~ ~ function templex_standard:tpa_success

scoreboard players add @s TPHR 1
execute @s[score_TPHR_min=100] ~ ~ ~ function templex_standard:tpa_fail
