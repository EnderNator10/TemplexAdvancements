execute @a[tag=!joined] ~ ~ ~ function templex_standard:new_player_setup
scoreboard players tag @a[tag=!joined] add joined
scoreboard teams join NC @a[team=]

scoreboard players set @a[tag=!PO,team=!Templexian] PartOn 1 {Tags:["special"]}

scoreboard players add @a SleepTime 1 {Sleeping:1b}

tp @e[x=485,y=6,z=457,r=100,type=Creeper] ~ ~-270 ~
tp @e[x=485,y=6,z=457,r=100,type=Enderman] ~ ~-270 ~
tp @e[x=485,y=6,z=457,r=100,type=Skeleton] ~ ~-270 ~
tp @e[x=485,y=6,z=457,r=100,type=Spider] ~ ~-270 ~
tp @e[x=485,y=6,z=457,r=100,type=Cave_Spider] ~ ~-270 ~
tp @e[x=485,y=6,z=457,r=100,type=Zombie] ~ ~-270 ~
tp @e[x=485,y=6,z=457,r=100,type=Zombie_Villager] ~ ~-270 ~
tp @e[x=485,y=6,z=457,r=100,type=Endermite] ~ ~-270 ~

####

execute @a[team=!Warrior,score_PlayTime_min=504000,score_PlayTime=1223999,tag=!special] ~ ~ ~ templex_standard:function team_warrior
execute @a[team=!Archaeologist,score_PlayTime_min=1224000,score_PlayTime=3167999,tag=!special] ~ ~ ~ function templex_standard:team_archaeologist
execute @a[team=!Master,score_PlayTime_min=3168000,score_PlayTime=5759999,tag=!special] ~ ~ ~ function templex_standard:team_master
execute @a[team=!Knight,score_PlayTime_min=5760000,score_PlayTime=12095999,tag=!special] ~ ~ ~ function templex_standard:team_knight
execute @a[team=!Magician,score_PlayTime_min=12096000,score_PlayTime=50000000,tag=!special] ~ ~ ~ function templex_standard:team_magician

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

execute @a[score_Dim_min=1,score_Dim=1,x=170,y=52,z=0,r=100,m=0] ~ ~ ~ function templex_standard:end_protection

execute @a[score_TPSend_min=1] ~ ~ ~ function templex_standard:tpsend

execute @a[score_TPHere_min=1] ~ ~ ~ function templex_standard:tphere

execute @a[score_Diamond_min=1] ~ ~ ~ function templex_standard:xray_check

execute @a[score_SleepTime_min=120] ~ ~ ~ function templex_standard:sleep

execute @a[score_PartOn_min=1,m=!3] ~ ~ ~ function templex_standard:particles

execute @a[score_ToggleParticle_min=1] ~ ~ ~ function templex_standard:toggleparticle
