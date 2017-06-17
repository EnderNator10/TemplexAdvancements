scoreboard players enable @a Rules
scoreboard players enable @a SpawnPoint
scoreboard players enable @a Spawn
scoreboard players enable @a TPEnd
scoreboard players enable @a Commands
scoreboard players enable @a Home
scoreboard players enable @a TPHere
scoreboard players enable @a TPSend
scoreboard players enable @a ViewPlayTime
scoreboard players enable @a Vote
scoreboard players enable @a TriggerReset
scoreboard players enable @a Survival
scoreboard players enable @a RTP
scoreboard players enable @a BuyRTP
scoreboard players enable @a ToggleParticle
scoreboard players enable @a BuyXP
scoreboard players enable @a[tag=special] Firework
tellraw @a [{"text":"All triggers have been reset!","color":"blue","italic":"true"}]
scoreboard players set @a TriggerReset 0
