execute @a[team=,tag=!joined] ~ ~ ~ function templex_standard:new_player_setup
scoreboard players tag @a[tag=!joined] add joined
scoreboard teams join NC @a[team=]

####

execute @a[score_SpawnPoint_min=1] ~ ~ ~ function templex_standard:spawnpoint

execute @a[score_Home_min=1] ~ ~ ~ function templex_standard:home

execute @a[score_Spawn_min=1] ~ ~ ~ function templex_standard:spawn

execute @a[score_Rules_min=1] ~ ~ ~ function templex_standard:rules

execute @a[score_Logins_min=1] ~ ~ ~ function templex_standard:login

execute @a[score_Commands_min=1] ~ ~ ~ function templex_standard:commands

execute @a[score_ViewPlayTime_min=1] ~ ~ ~ function templex_standard:view_play_time

execute @a[score_Vote_min=1] ~ ~ ~ function templex_standard:vote

execute @a[score_TriggerReset_min=1] ~ ~ ~ function templex_standard:trigger_reset

execute @a[score_TPEnd_min=1] ~ ~ ~ function templex_standard:tp_end_try

execute @a[score_Survival_min=1] ~ ~ ~ function templex_standard:survival

execute @a[x=452,y=21,z=429,r=2] ~ ~ ~ function templex_standard:rtp_try
execute @a[score_RTP_min=1] ~ ~ ~ function templex_standard:rtp_try

execute @a[score_BuyRTP_min=1] ~ ~ ~ function templex_standard:buy_rtp_try
