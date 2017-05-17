tp @s @e[tag=world_commands]
tellraw @s [{"text":"Teleporting to the Command Room...!","italic":"true","color":"green"}]
scoreboard players enable @a Commands
scoreboard players set @a Commands 0
