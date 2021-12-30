# `minecraft:load` runs once at the start of the tick after a server (re)load.

# ════ Game Rules ════ #

gamerule forgiveDeadPlayers true
gamerule sendCommandFeedback false
gamerule doDaylightCycle true
gamemode survival @a

# ════ NPC(s) ════ #

# Duck, the chicken
execute unless entity @e[name="Duck"] run summon minecraft:chicken 2 2 1 {CustomName:'{"text":"Duck","color":"yellow"}'}
