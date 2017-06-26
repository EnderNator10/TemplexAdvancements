scoreboard teams join Magician @s
tellraw @a [{"selector":"@s"},{"text":" \u00A7chas just leveled up to the \u00A76Magician \u00A7crank!"}]
execute @e[type=Bat] ~ ~ ~ summon Lightning_Bolt ~ ~ ~
scoreboard players tag @s add 4
