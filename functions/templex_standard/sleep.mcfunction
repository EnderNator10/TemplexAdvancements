weather clear 100000
time set 2147470000
tellraw @a [{"selector":"@s"},{"text":" has just slept the night away","color":"red"},{"text":"!","color":"dark_gray"}]
scoreboard players set @s SleepTime 0
advancement revoke @s only templex_standard:sleep
# scoreboard players add Days Stats 1
# scoreboard players set DS Inputter 24000
# scoreboard players operation DS Inputter *= Days Stats
