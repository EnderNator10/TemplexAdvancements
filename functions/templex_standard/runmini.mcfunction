scoreboard players operation @s Inputter = Z Run
execute @s[score_Inputter=5,score_RunTick_min=1] ~ ~ ~ tp @s -580424 18 -1421573 -90 0
execute @s[score_Inputter=5,score_RunTick_min=1] ~ ~ ~ tellraw @s [{"text":"Successfully TPed to the Run Minigame! Wait for at least 4 players to join!","color":"green"}]
execute @s[score_Inputter=5,score_RunTick_min=1] ~ ~ ~ tellraw @a[tag=OP] [{"text":"Run TP System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" was just TPed to the Run Minigame! There are ","color":"red"},{"score":{"name":"Z","objective":"Run"},"color":"gold"},{"text":" players currently in the minigame!","color":"red"}]
execute @s[score_Inputter=5,score_RunTick_min=1] ~ ~ ~ scoreboard players set @s Run 0
execute @s[score_Inputter=5,score_RunTick_min=1] ~ ~ ~ scoreboard players enable @a Run

execute @s[score_Inputter_min=6,score_RunTick_min=1] ~ ~ ~ tellraw @s [{"text":"This game is already in session... Sorry. Try again once someone wins.","color":"red"}]
execute @s[score_Inputter_min=6,score_RunTick_min=1] ~ ~ ~ scoreboard players set @s Run 0
execute @s[score_Inputter_min=6,score_RunTick_min=1] ~ ~ ~ scoreboard players enable @a Run

execute @s[score_RunTick=0] ~ ~ ~ tellraw @s [{"text":"You don't have enough tickets to do this. Buy more at the store! (/trigger Store set 1)","color":"red"}]
execute @s[score_RunTick=0] ~ ~ ~ scoreboard players set @s Run 0
execute @s[score_RunTick=0] ~ ~ ~ scoreboard players enable @a Run
