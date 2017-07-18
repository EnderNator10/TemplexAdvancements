#### You need to have "@p[r=100,m=!1,tag=!SWinner]" in the repeating command block for the game to work correctly!
scoreboard players operation @s Dummy = Z Shovel

execute @a[tag=!InShovel,r=100,m=2] ~ ~ ~ scoreboard players set Z Shovel 0
execute @a[tag=!InShovel,r=100,m=2] ~ ~ ~ scoreboard players tag @a remove ShovelAdded
scoreboard players tag @a[tag=!InSpleef,r=100,m=2] add InShovel
execute @a[r=100,tag=!ShovelAdded] ~ ~ ~ scoreboard players add Z Shovel 1
execute @a[r=100,tag=!ShovelAdded] ~ ~ ~ scoreboard players tag @s add ShovelAdded

execute @a[tag=InShovel,r=100] ~ ~ ~ detect ~ ~ ~ water 0 tp @s -1136959 15 -1956251 -45 0
execute @a[tag=InShovel,r=100] ~ ~ ~ detect ~ ~ ~ water 0 scoreboard players add Y Shovel 1
execute @a[tag=InShovel,r=100] ~ ~ ~ detect ~ ~ ~ water 0 scoreboard players set @s Dummy2 -1
execute @a[tag=InShovel,r=100] ~ ~ ~ detect ~ ~ ~ water 0 scoreboard players tag @s add Fallen
execute @a[tag=InShovel,r=100] ~ ~ ~ detect ~ ~ ~ water 0 tellraw @a [{"text":"Shovel Minigame","color":"gold"},{"text":" : ","color":"dark_gray},{"selector":"@s"},{"text":" has been eliminated from the spleef game!","color":"red"}]

execute @s[score_Dummy_min=4,score_Dummy=16,tag=!Started] ~ ~ ~ tp @a[tag=InShovel,r=100] -1136939 11 -1956231
execute @s[score_Dummy_min=4,score_Dummy=16,tag=!Started] ~ ~ ~ give @a[tag=InShovel,r=100] diamond_shovel 1 0 {display:{Name:"Shovel Shovel",Lore:["Only for spleef!"]},CanDestroy:["minecraft:snow"],Unbreakable:1}
execute @s[score_Dummy_min=4,score_Dummy=16,tag=!Started] ~ ~ ~ title @a[tag=InShovel,r=100] title [{"text":"Now Starting!","color":"green"}]
execute @s[score_Dummy_min=4,score_Dummy=16] ~ ~ ~ scoreboard players tag @a[tag=InShovel,r=100] add Started
execute @s[score_Dummy_min=0,score_Dummy=3] ~ ~ ~ title @a[tag=InShovel,r=100] actionbar [{"text":"Waiting for players...","color":"red"}]

scoreboard players set @e[type=Item] Dummy 1 {Item:{id:snowball,Count:1}}
tp @e[r=100,type=Item,score_Dummy_min=1] ~ ~-270 ~
tp @e[r=100,type=Ender_Pearl] ~ ~-270 ~
effect @a[tag=InShovel,r=100] minecraft:saturation 3 20 true

execute @p[tag=Fallen,score_Dummy2_min=-1,score_Dummy2=-1] ~ ~ ~ scoreboard players operation X Shovel = Z Shovel
execute @p[tag=Fallen,score_Dummy2_min=-1,score_Dummy2=-1] ~ ~ ~ scoreboard players operation X Shovel -= Y Shovel
execute @p[tag=Fallen,score_Dummy2_min=-1,score_Dummy2=-1] ~ ~ ~ scoreboard players operation @s Dummy2 = X Shovel
execute @p[score_Dummy2_min=1,score_Dummy2=1] ~ ~ ~ scoreboard players tag @p[r=100,m=2,tag=!Fallen] add SWinner

execute @a[tag=SWinner,r=100] ~ ~ ~ title @a[tag=InRun,r=100] actionbar [{"selector":"@s"},{"text":" has won!","color":"green"}]
execute @a[tag=SWinner,r=100] ~ ~ ~ scoreboard players add @s Dummy 1

execute @a[score_Dummy_min=20,score_Dummy=20,tag=InShovel] ~ ~ ~ tellraw @a[r=100] [{"text":"Shovel Minigame","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Returning all players to Spawn in 5 seconds..."}]
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players set Z Shovel 0
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ tellraw @a[r=100] [{"text":"Shovel Minigame","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Returning all players to Spawn..."}]
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ tellraw @a [{"text":"Run Minigame","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@a[tag=SWinner,r=100]"},{"text":" has just won a game of the Shovel Minigame!","color":"red"}]
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players add @a[tag=SWinner,r=100] TC 195
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players add @a[tag=SWinner,r=100] Karma 95
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players add @a[tag=InShovel,r=100] TC 5
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players add @a[tag=InShovel,r=100] Karma 5
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ clear Nitrate1 minecraft:diamond_shovel 0 1 {display:{Name:"Spleef Shovel",Lore:["Only for spleef!"]},CanDestroy:["minecraft:snow"],Unbreakable:1}
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ fill -1136959 10 -1956211 -1136919 10 -1956251 minecraft:snow
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ gamemode s @a[r=100,m=2]
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players set @a[r=100,m=0] Spawn 1
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players tag @a[r=100] remove Started
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players tag @a remove SWinner
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players tag @a remove Fallen
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players tag @a remove InShovel
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players reset @a[r=100,tag=InShovel,m=0] Dummy2
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InShovel] ~ ~ ~ scoreboard players reset @a[r=100,tag=InShovel,m=0] Dummy

execute @a[tag=InShovel,r=100] ~ ~ ~ detect ~ ~ ~ stone_pressure_plate 1 trigger Spawn set 1
execute @a[tag=InShovel,r=100] ~ ~ ~ detect ~ ~ ~ stone_pressure_plate 1 scoreboard players add @s ShovelTick 1
execute @a[tag=InShovel,r=100] ~ ~ ~ detect ~ ~ ~ stone_pressure_plate 1 scoreboard players tag @s remove InShovel
execute @a[tag=InShovel,r=100] ~ ~ ~ detect ~ ~ ~ stone_pressure_plate 1 scoreboard players remove Z Shovel 1
