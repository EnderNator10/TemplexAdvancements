tp @s -31502 33 -1939711
tellraw @s [{"text":"You have been TPed to the store!","color":"green"}]
tellraw @a[tag=OP] [{"text":"Store System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":" Just TPed ","color":"red"},{"selector":"@s"},{"text":" to the store!","color":"red"}]
scoreboard players set @s Store 0
scoreboard players enable @a Store
