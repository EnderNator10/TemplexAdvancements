scoreboard players add @s DiamondTime 1
execute @a[score_DiamondTime_min=1200] ~ ~ ~ tellraw @a[tag=OP] [{"text":"Xray Check System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" has been mining diamonds for a minute, but has only mined ","color":"red"},{"score":{"name":"@s","objective":"Diamond"},"color":"gold"},{"text":" diamonds. They need to mine ","color":"red"},{"text":"13","color":"gold"},{"text":" diamonds in order to be considered an \"Xray Hacker\". You may still want to watch them.","color":"red"}]

execute @a[score_DiamondTime_min=1200] ~ ~ ~ scoreboard players set @s Diamond 0
execute @a[score_DiamondTime_min=1200] ~ ~ ~ scoreboard players set @s DiamondTime 0

execute @a[score_Diamond_min=13] ~ ~ ~ scoreboard players set Z Diamond 20
execute @a[score_Diamond_min=13] ~ ~ ~ scoreboard players operation Z DiamondTime = @s DiamondTime
execute @a[score_Diamond_min=13] ~ ~ ~ scoreboard players operation Z DiamondTime /= Z Diamond
execute @a[score_Diamond_min=13] ~ ~ ~ tellraw @a[tag=OP] [{"text":"Xray Check System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" has just mined ","color":"red"},{"score":{"name":"@s","objective":"Diamond"},"color":"gold"},{"text":" diamonds in ","color":"red"},{"score":{"name":"Z","objective":"DiamondTime"},"color":"gold"},{"text":" seconds and thus is now placed on the \"Xray Hackers\" list. Go and check if I am correct. ;) Sometimes I'm wrong.\n","color":"red"},{"selector":"@a[score_Xray_min=1]"},{"text":" have already been placed on this list. (Only shows those who are online.)","color":"red"}]
execute @a[score_Diamond_min=13] ~ ~ ~ scoreboard players add @s Xray 1

execute @a[score_Diamond_min=13] ~ ~ ~ scoreboard players set @s DiamondTime 0
execute @a[score_Diamond_min=13] ~ ~ ~ scoreboard players set @s Diamond 0
