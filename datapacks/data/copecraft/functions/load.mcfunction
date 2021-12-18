# `minecraft:load` runs once at the start of the tick after a server (re)load.

# https://minecraft.fandom.com/wiki/Game_rule
gamerule doInsomnia false
gamerule doLimitedCrafting true
gamerule forgiveDeadPlayers true

# https://minecraft.fandom.com/wiki/Scoreboard
scoreboard objectives add copecraft-thing1 dummy
scoreboard objectives setdisplay belowName copecraft-thing1
scoreboard objectives setdisplay list copecraft-thing1
