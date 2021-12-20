# `minecraft:load` runs once at the start of the tick after a server (re)load.

# https://minecraft.fandom.com/wiki/Game_rule
gamerule doInsomnia false
gamerule doLimitedCrafting true
gamerule forgiveDeadPlayers true

# https://minecraft.fandom.com/wiki/Scoreboard

# [Public] Scoreboard - Thing 1
#scoreboard objectives add copecraft-thing1 dummy
#scoreboard objectives setdisplay belowName copecraft-thing1
#scoreboard objectives setdisplay list copecraft-thing1

# [Private] Scoreboard - Thing 2
#scoreboard objectives add copecraft-thing2 dummy

# [Public] Scoreboard - Quest Tracker
#scoreboard objectives add copecraft-quest dummy {"text":"Quests", "color":"gold"}
#scoreboard objectives setdisplay sidebar copecraft-quest
#scoreboard players set §aCompleted_Objective copecraft-quest 1
#scoreboard players set §cIncomplete_Objective copecraft-quest 0
