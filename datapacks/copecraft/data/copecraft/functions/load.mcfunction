# `minecraft:load` runs once at the start of the tick after a server (re)load.

# https://minecraft.fandom.com/wiki/Game_rule
gamerule forgiveDeadPlayers true
gamerule sendCommandFeedback false
gamerule doDaylightCycle true

# Development Settings
#gamerule sendCommandFeedback true
#gamerule doDaylightCycle false

## NPCs ##

# Menu Chest Minecart
#summon chest_minecart -42 320 -42 {CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}

# Duck, the chicken
execute unless entity @e[name="Duck"] run summon minecraft:chicken 2 2 1 {CustomName:'{"text":"Duck","color":"yellow"}'}
