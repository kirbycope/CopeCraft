# `minecraft:load` runs once at the start of the tick after a server (re)load.

# https://minecraft.fandom.com/wiki/Game_rule
gamerule forgiveDeadPlayers true
gamerule sendCommandFeedback false
gamerule doDaylightCycle true

# Development Settings
#gamerule sendCommandFeedback true
#gamerule doDaylightCycle false

## NPCs ##

# Tim[my] and Tom[my]
summon villager -44 316 -42 {CustomNameVisible:1b,CustomName:'{"text":"Tim","color":"blue"}',Attributes:[{Name:"generic.knockback_resistance",Base:1},{Name:"generic.movement_speed",Base:.001}]}
summon villager -41 316 -43 {CustomNameVisible:1b,CustomName:'{"text":"Tom","color":"red"}',Attributes:[{Name:"generic.knockback_resistance",Base:1},{Name:"generic.movement_speed",Base:.001}]}
