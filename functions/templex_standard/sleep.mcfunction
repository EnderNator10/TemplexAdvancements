weather clear 100000
time set 0
tellraw @a [{"selector":"@s"},{"text":" has just slept the night away","color":"red"},{"text":"!","color":"dark_gray"}]
advancement revoke @s only templex_standard:sleep
scoreboard players add Days Stats 1
scoreboard players set DS Inputter 24000
scoreboard players operation DS Inputter *= Days Stats