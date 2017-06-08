weather clear 100000
time set 0
tellraw @a [{"selector":"@s"},{"text":" has just slept the night away","color":"red"},{"text":"!","color":"dark_gray"}]
scoreboard players set @s SleepTime 0
advancement revoke @s only templex_standard:sleep
scoreboard players add Days Stats 1
scoreboard players set DS Inputter 24000
scoreboard players operation DS Inputter *= Days Stats
execute @r[tag=ann_stand,type=Armor_Stand,x=479,y=7,z=443,r=10] ~ ~ ~ setblock ~ ~ ~ redstone_block
