tp @s -658 36 -1118
tellraw @a[tag=OP] [{"text":"Just TPed ","color":"red"},{"selector":"@s"},{"text":" to the End!","color":"red"}]
tellraw @s [{"text":"TPed to the End successfully!","color":"blue","italic":"true"}]
scoreboard players set @s TPEnd 0
scoreboard players enable @a TPEnd
