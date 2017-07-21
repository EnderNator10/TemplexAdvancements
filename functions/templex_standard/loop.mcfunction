execute @a[tag=!joined] ~ ~ ~ function templex_standard:new_player_setup
scoreboard players tag @a[tag=!joined] add joined
scoreboard teams join NC @a[team=]

execute @a[tag=!Booked] ~ ~ ~ function templex_standard:cmd_book

scoreboard players set @a[tag=!PO] PartOn 1 {Tags:["special"]}

scoreboard players add @a SleepTime 1 {Sleeping:1b}

scoreboard players tag @a[tag=!InShovel] remove SWinner {Tags:["SWinner"]}

scoreboard players tag @a[x=-580426,y=14,z=-1421581,rm=100,tag=InRun] remove InRun

tp @e[x=485,y=6,z=457,r=100,type=Creeper] ~ ~-270 ~
tp @e[x=485,y=6,z=457,r=100,type=Enderman] ~ ~-270 ~
tp @e[x=485,y=6,z=457,r=100,type=Skeleton] ~ ~-270 ~
tp @e[x=485,y=6,z=457,r=100,type=Spider] ~ ~-270 ~
tp @e[x=485,y=6,z=457,r=100,type=Cave_Spider] ~ ~-270 ~
tp @e[x=485,y=6,z=457,r=100,type=Zombie] ~ ~-270 ~
tp @e[x=485,y=6,z=457,r=100,type=Zombie_Villager] ~ ~-270 ~
tp @e[x=485,y=6,z=457,r=100,type=Endermite] ~ ~-270 ~

####

execute @a[team=!NC,score_PlayTime_min=0,score_PlayTime=503999,tag=!special] ~ ~ ~ function templex_standard:ncfix
execute @a[team=!Warrior,score_PlayTime_min=504000,score_PlayTime=1223999,tag=!special] ~ ~ ~ function templex_standard:team_warrior
execute @a[team=!Explorer,score_PlayTime_min=1224000,score_PlayTime=1583999,tag=!special] ~ ~ ~ function templex_standard:team_explorer
execute @a[team=!Master,score_PlayTime_min=1584000,score_PlayTime=3167999,tag=!special] ~ ~ ~ function templex_standard:team_master
execute @a[team=!Knight,score_PlayTime_min=3168000,score_PlayTime=6335999,tag=!special] ~ ~ ~ function templex_standard:team_knight
execute @a[team=!Magician,score_PlayTime_min=6336000,score_PlayTime=12095999,tag=!special] ~ ~ ~ function templex_standard:team_magician
execute @a[team=!HighKing,score_PlayTime_min=12096000,score_PlayTime=50000000,tag=!special] ~ ~ ~ function templex_standard:team_highking

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

execute @a[score_BuyXP_min=1] ~ ~ ~ function templex_standard:xp_try

execute @a[score_Firework_min=1,tag=special] ~ ~ ~ function templex_standard:firework

execute @a[score_Secret_min=1,tag=special] ~ ~ ~ function templex_standard:zelda

execute @a[score_Ping_min=1] ~ ~ ~ function templex_standard:ping

execute @a[score_Iron_min=1] ~ ~ ~ function templex_standard:iron

execute @a[score_Store_min=1] ~ ~ ~ function templex_standard:store

execute @a[score_Run_min=1] ~ ~ ~ function templex_standard:mini_run_go

execute @a[score_Shovel_min=1] ~ ~ ~ function templex_standard:mini_shovel_go

execute @a[score_BuyTC1_min=1] ~ ~ ~ function templex_standard:buy_tc1

execute @a[score_BuyRun_min=1] ~ ~ ~ function templex_standard:buy_run

execute @a[score_BuyShovel_min=1] ~ ~ ~ function templex_standard:buy_shovel
