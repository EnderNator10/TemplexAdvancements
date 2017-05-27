scoreboard teams join Magician @s
tellraw @a [{"selector":"@s"},{"text":" \u00A7chas just leveled up to the \u00A79Knight \u00A7crank!\n\u00A76Congratulations, "},{"selector":"@s"},{"text":" \u00A76on achieving the \u00A7aHighest \u00A7cPlay\u00A78-\u00A75Time\u00A78-\u00A77Based \u00A76rank!"}]
execute @e[type=Bat] ~ ~ ~ summon Lightning_Bolt ~ ~ ~
scoreboard players tag @s add 4
