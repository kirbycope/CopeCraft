# Remove Mule
tp @e[name="Menu"] 0 -64 0

# Tag user so that the mule doesn't keep spawning with each tick
tag @a remove menu

scoreboard players set @a copecraft-sneak-time 0

tellraw @a "close"
