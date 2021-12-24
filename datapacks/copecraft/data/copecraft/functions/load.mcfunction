# `minecraft:load` runs once at the start of the tick after a server (re)load.

# https://minecraft.fandom.com/wiki/Game_rule
gamerule doInsomnia false
gamerule doLimitedCrafting true
gamerule forgiveDeadPlayers true
#gamerule sendCommandFeedback false

setworldspawn -8 0 8

# Reset farmland
setblock -3 -1 -1 minecraft:farmland replace
setblock -3 -1 -2 minecraft:farmland replace
setblock -3 -1 -4 minecraft:farmland replace
setblock -3 -1 -5 minecraft:farmland replace
setblock -4 -1 -1 minecraft:farmland replace
setblock -4 -1 -2 minecraft:farmland replace
setblock -4 -1 -4 minecraft:farmland replace
setblock -4 -1 -5 minecraft:farmland replace
setblock -5 -1 -1 minecraft:farmland replace
setblock -5 -1 -2 minecraft:farmland replace
setblock -5 -1 -4 minecraft:farmland replace
setblock -5 -1 -5 minecraft:farmland replace
setblock -6 -1 -1 minecraft:farmland replace
setblock -6 -1 -2 minecraft:farmland replace
setblock -6 -1 -4 minecraft:farmland replace
setblock -6 -1 -5 minecraft:farmland replace
