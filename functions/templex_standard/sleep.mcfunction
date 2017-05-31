scoreboard players add @s SleepTime 1
execute @a[score_SleepTime_min=100] ~ ~ ~ weather clear 100000
execute @a[score_SleepTime_min=100] ~ ~ ~ time set 0
execute @a[score_SleepTime_min=100] ~ ~ ~ tellraw @a [{"selector":"@s"},{"text":" has just slept the night away","color":"red"},{"text":"!","color":"dark_gray"}]
execute @a[score_SleepTime_min=100] ~ ~ ~ scoreboard players set @s SleepTime 0
execute @a[score_SleepTime_min=100] ~ ~ ~ advancement revoke @s only templex_standard:sleep
execute @a[score_SleepTime_min=100] ~ ~ ~ scoreboard players add Days Stats 1
execute @a[score_SleepTime_min=100] ~ ~ ~ scoreboard players set DS Inputter 24000
execute @a[score_SleepTime_min=100] ~ ~ ~ scoreboard players operation DS Inputter *= Days Stats
execute @a[score_SleepTime_min=100] ~ ~ ~ execute @r[tag=ann_stand,type=Armor_Stand,x=479,y=7,z=443,r=10] ~ ~ ~ setblock ~ ~ ~ redstone_block
