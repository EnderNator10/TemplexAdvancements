tp @s -804883 65 -1037124
tellraw @s [{"text":"Successfully TPed to Nitrate1's Iron Titan Farm.","color":"red"}]
tellraw @a[tag=OP] [{"text":"Iron System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just TPed ","color":"red"},{"selector":"@s"},{"text":" to Nitrate1's Iron Titan Farm.","color":"red"}]
scoreboard players set @s Iron 0
scoreboard players enable @a[tag=iron] Iron
