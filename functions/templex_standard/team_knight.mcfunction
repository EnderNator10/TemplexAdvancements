scoreboard teams join Knight @s
tellraw @a [{"selector":"@s"},{"text":" \u00A7chas just leveled up to the \u00A79Knight \u00A7crank!"}]
execute @e[type=Bat] ~ ~ ~ summon LightningBolt ~ ~ ~
scoreboard players tag @s add 3
