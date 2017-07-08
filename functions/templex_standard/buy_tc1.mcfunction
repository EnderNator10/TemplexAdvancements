tellraw @s[score_Karma=15] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
scoreboard players add @s[score_Karma_min=15] TC 1
tellraw @s[score_Karma_min=15] [{"text":"Added one Templex Credit to your profile!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"TC"},"color":"gold"},{"text":" Templex Credits","color":"dark_purple"},{"text":" on your profile!","color":"aqua"}]
scoreboard players remove @s[score_Karma_min=15] Karma 15
