scoreboard players operation @s Inputter = Z Shovel

execute @s[tag=!InShovel] ~ ~ ~ scoreboard players set @a[tag=!Started] Dummy3 1 {Tags:["InShovel"]}
execute @p[score_Dummy3_min=1] ~ ~ ~ scoreboard players set @p[score_Shovel_min=1] Dummy3 1

execute @s[score_Inputter=15,score_ShovelTick_min=1,tag=!InShovel,score_Dummy3_min=1] ~ ~ ~ tp @s -580424 18 -1421573 -90 0
execute @s[score_Inputter=15,score_ShovelTick_min=1,tag=!InShovel,score_Dummy3_min=1] ~ ~ ~ tellraw @s [{"text":"Successfully paid 1 ticket to play the Shovel Minigame! Wait for at least 4 players to join!","color":"green"}]
execute @s[score_Inputter=15,score_ShovelTick_min=1,tag=!InShovel,score_Dummy3_min=1] ~ ~ ~ tellraw @a[tag=OP] [{"text":"Shovel TP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" was just TPed to the Shovel Minigame! There are ","color":"red"},{"score":{"name":"Z","objective":"Shovel"},"color":"gold"},{"text":" players currently in the minigame!","color":"red"}]
execute @s[score_Inputter=15,score_ShovelTick_min=1,tag=!InShovel,score_Dummy3_min=1] ~ ~ ~ scoreboard players remove @s ShovelTick 1
execute @s[score_Inputter=15,score_ShovelTick_min=1,tag=!InShovel,score_Dummy3_min=1] ~ ~ ~ scoreboard players set @s Shovel 0
execute @s[score_Inputter=15,score_ShovelTick_min=1,tag=!InShovel,score_Dummy3_min=1] ~ ~ ~ scoreboard players enable @a Shovel

execute @s[score_Inputter_min=16,score_ShovelTick_min=1,tag=!InShovel] ~ ~ ~ tellraw @s [{"text":"This game is already full! Sorry, try again once it is finished.","color":"red"}]
execute @s[score_Inputter_min=16,score_ShovelTick_min=1,tag=!InShovel] ~ ~ ~ scoreboard players set @s Shovel 0
execute @s[score_Inputter_min=16,score_ShovelTick_min=1,tag=!InShovel] ~ ~ ~ scoreboard players enable @a Shovel

execute @s[score_ShovelTick=0,tag=!InShovel] ~ ~ ~ tellraw @s [{"text":"You don't have enough tickets to do this. Buy more at the store! (/trigger Store set 1)","color":"red"}]
execute @s[score_ShovelTick=0,tag=!InShovel] ~ ~ ~ scoreboard players set @s Shovel 0
execute @s[score_ShovelTick=0,tag=!InShovel] ~ ~ ~ scoreboard players enable @a Shovel

execute @s[tag=!InShovel,score_InShovel_min=1] ~ ~ ~ tellraw @s [{"text":"This game is already in session... You are now spectating.","color":"red"}]
execute @s[tag=!InShovel,score_InShovel_min=1] ~ ~ ~ tp @s -1136959 15 -1956251 -45 0
execute @s[tag=!InShovel,score_InShovel_min=1] ~ ~ ~ scoreboard players set @s Shovel 0
execute @s[tag=!InShovel,score_InShovel_min=1] ~ ~ ~ scoreboard players enable @a Shovel

execute @s[tag=InShovel] ~ ~ ~ tellraw @s [{"text":"You are already playing!","color":"red"}]
execute @s[tag=InShovel] ~ ~ ~ scoreboard players set @s Shovel 0
execute @s[tag=InShovel] ~ ~ ~ scoreboard players enable @a Shovel

scoreboard players reset @a Dummy3
