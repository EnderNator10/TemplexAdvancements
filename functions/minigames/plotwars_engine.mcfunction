## Codes:
# Any trigger related to "Plot Wars" -> "PW_*"
# Any trigger related to Buying in "Plot Wars" -> "PW_B*_<name of buyable purchase>"
# Any trigger related to Selling in "Plot Wars" -> "PW_S*_<name of buyable purchase>"

#-- Upon Plot Wars spawn --
# Spawning
execute @p[score_PW_min=1] ~ ~ ~ tp @s 2075663 172 -489763 0 0
execute @p[score_PW_min=1] ~ ~ ~ tellraw @a [{"\u00A76[\u00A74PW\u00A76] "},{"selector":"@s"},{"text":" \u00A7ahas just joined the Plot Wars tetric."}]
execute @p[score_PW_min=1] ~ ~ ~ tellraw @s [{"\u00A76[\u00A74PW\u00A76] \u00A7aWelcome to Plot Wars!"}]
execute @p[score_PW_min=1] ~ ~ ~ effect @s resistance 1000000 100 true
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ title @a actionbar [{"text":"\u00A76[\u00A74PW\u00A76] \u00A72Now Generating a Plot. Expect Lag!"}]
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ tellraw @a [{"text":"\u00A76[\u00A74PW\u00A76] \u00A72Now Generating a Plot. Expect Lag!"}]
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ scoreboard operation @p[tag=!PIDed] PID = Getter PID
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ scoreboard players add Getter PID 1
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ scoreboard players set @s Temblux 500
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @s[score_InPW_min=1] ~ ~ ~ scoreboard players operation @e[name=PlotStand,score_Plot_min=0] Plot = @s PID
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand,score_PlotID=0] ~ ~ ~ tp @s 2075663 172 -489763
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand,score_PlotID_min=1,score_PlotID=10] ~ ~ ~ tp @s ~50 ~ ~
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand,score_PlotID_min=10,score_PlotID=10] ~ ~ ~ tp @s 2075663 172 -489713
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand,score_PlotID_min=1] ~ ~ ~ scoreboard players add @s PlotID 1
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand,score_PlotID_min=1] ~ ~ ~ scoreboard players operation @p[score_GoToPlot_min=1,score_InPW_min=1] Plot = @s Plot
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand,score_PlotID_min=1] ~ ~ ~ scoreboard players operation @p[score_GoToPlot_min=1,score_InPW_min=1] PlotID = @s PlotID
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @p[score_InPW_min=1] ~ ~ ~ scoreboard players operation @s Plot -= @s PlotID
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @p[score_InPW_min=1,score_Plot_min=0,score_Plot=0] ~ ~ ~ scoreboard players tag @e[name=PlotStand,tag=!PlottedStand] add PlottedStand
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ tp ~-25 ~-2 ~-25
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ clone 2075637 170 -489840 2075687 173 -489790 ~ ~ ~
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ tp @s -133 67 93
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ scoreboard players set @s PlotID 0
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ scoreboard players set @s Plot 0
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ scoreboard players tag @s remove PlottedStand
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ scoreboard players tag @s add PIDed
execute @p[score_PW_min=1] ~ ~ ~ scoreboard players set @s InPW 1
execute @p[score_PW_min=1] ~ ~ ~ scoreboard players set @s PW 0

#-- This assigns players to things --
# Assigning plots
execute @p[score_GoToPlot_min=1] ~ ~ ~ title @s actionbar [{"text":"\u00A76[\u00A74PW\u00A76] \u00A72Locating Plot..."}]
execute @p[score_GoToPlot_min=1] ~ ~ ~ execute @s[score_InPW_min=1] ~ ~ ~ scoreboard players operation @e[name=PlotStand,score_Plot_min=0] Plot = @s PID
execute @p[score_GoToPlot_min=1] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand,score_PlotID=0] ~ ~ ~ tp @s 2075663 172 -489763
execute @p[score_GoToPlot_min=1] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand,score_PlotID_min=1,score_PlotID=10] ~ ~ ~ tp @s ~50 ~ ~
execute @p[score_GoToPlot_min=1] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand,score_PlotID_min=10,score_PlotID=10] ~ ~ ~ tp @s 2075663 172 -489713
execute @p[score_GoToPlot_min=1] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand,score_PlotID_min=1] ~ ~ ~ scoreboard players add @s PlotID 1
execute @p[score_GoToPlot_min=1] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand,score_PlotID_min=1] ~ ~ ~ scoreboard players operation @p[score_GoToPlot_min=1,score_InPW_min=1] Plot = @s Plot
execute @p[score_GoToPlot_min=1] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand,score_PlotID_min=1] ~ ~ ~ scoreboard players operation @p[score_GoToPlot_min=1,score_InPW_min=1] PlotID = @s PlotID
execute @p[score_GoToPlot_min=1] ~ ~ ~ execute @p[score_InPW_min=1] ~ ~ ~ scoreboard players operation @s Plot -= @s PlotID
execute @p[score_GoToPlot_min=1] ~ ~ ~ execute @p[score_InPW_min=1,score_Plot_min=0,score_Plot=0] ~ ~ ~ scoreboard players tag @e[name=PlotStand,tag=!PlottedStand] add PlottedStand
execute @p[score_GoToPlot_min=1] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ tp @p[score_GoToPlot_min=1,score_InPW_min=1] @e[tag=PlottedStand,name=PlotStand]
execute @p[score_GoToPlot_min=1] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ tp @s -133 67 93
execute @p[score_GoToPlot_min=1] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ scoreboard players set @s PlotID 0
execute @p[score_GoToPlot_min=1] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ scoreboard players set @s Plot 0
execute @p[score_GoToPlot_min=1] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ title @p[score_GetPlot_min=1] actionbar [{"text":"\u00A76[\u00A74PW\u00A76] \u00A72Plot Located!"}]
execute @p[score_GoToPlot_min=1] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ scoreboard players tag @s remove PlottedStand

#-- This deals with messages --
##Buying a house
# Main
execute @p[score_InPW_min=1,score_PW_BH_min=1] ~ ~ ~ tellraw @s [{"text":"\u00A77-=-= \u00A75Buying a House \u00A77=-=-\n\u00A73> "},{"text":"\u00A7eGeneric House","hoverEvent":{"action":"show_text","value":"\u00A74Click to buy house."},"clickEvent":{"action":"run_command","value":"/trigger PW_BH_Generic set 1"}}]
execute @p[score_InPW_min=1,score_PW_BH_min=1] ~ ~ ~ scoreboard players set @s PW_BH 0

# Getting house
execute @p[score_InPW_min=1,score_PW_BH_Generic_min=1] ~ ~ ~ 
