scoreboard players add @s ZeldaTime 1
execute @s[score_ZeldaTime_min=0,score_ZeldaTime=0] ~ ~ ~ execute @a[r=20] ~ ~ ~ playsound minecraft:block.note.harp master @s ~ ~ ~ 1 1.05946
execute @s[score_ZeldaTime_min=5,score_ZeldaTime=5] ~ ~ ~ execute @a[r=20] ~ ~ ~ playsound minecraft:block.note.harp master @s ~ ~ ~ 1 1
execute @s[score_ZeldaTime_min=10,score_ZeldaTime=10] ~ ~ ~ execute @a[r=20] ~ ~ ~ playsound minecraft:block.note.harp master @s ~ ~ ~ 1 0.840496
execute @s[score_ZeldaTime_min=15,score_ZeldaTime=15] ~ ~ ~ execute @a[r=20] ~ ~ ~ playsound minecraft:block.note.harp master @s ~ ~ ~ 1 0.594604
execute @s[score_ZeldaTime_min=20,score_ZeldaTime=20] ~ ~ ~ execute @a[r=20] ~ ~ ~ playsound minecraft:block.note.harp master @s ~ ~ ~ 1 0.561231
execute @s[score_ZeldaTime_min=25,score_ZeldaTime=25] ~ ~ ~ execute @a[r=20] ~ ~ ~ playsound minecraft:block.note.harp master @s ~ ~ ~ 1 0.890899
execute @s[score_ZeldaTime_min=30,score_ZeldaTime=30] ~ ~ ~ execute @a[r=20] ~ ~ ~ playsound minecraft:block.note.harp master @s ~ ~ ~ 1 1.12246
execute @s[score_ZeldaTime_min=35,score_ZeldaTime=35] ~ ~ ~ execute @a[r=20] ~ ~ ~ playsound minecraft:block.note.harp master @s ~ ~ ~ 1 1.41421
execute @s[score_ZeldaTime_min=35] ~ ~ ~ scoreboard players enable @a[tag=special] Secret
execute @s[score_ZeldaTime_min=35] ~ ~ ~ scoreboard players set @s Secret 0
execute @s[score_ZeldaTime_min=35] ~ ~ ~ tellraw @a[tag=OP] [{"text":"Secret Zelda Theme System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just played a tune!","color":"red"}]
execute @s[score_ZeldaTime_min=35] ~ ~ ~ tellraw @a[r=20] [{"selector":"@s"},{"text":" just played a tune!","color":"green"},{"text":"\n(Secret Theme from Legend of Zelda OoT)","color":"gold"}]
execute @s[score_ZeldaTime_min=35] ~ ~ ~ scoreboard players reset @s ZeldaTime
