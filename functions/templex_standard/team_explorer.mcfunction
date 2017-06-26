scoreboard teams join Explorer @s
tellraw @a [{"selector":"@s"},{"text":" \u00A7chas just leveled up to the \u00A7dExplorer \u00A7crank!"}]
execute @e[type=Bat] ~ ~ ~ summon Lightning_Bolt ~ ~ ~
scoreboard players tag @s add Arch
