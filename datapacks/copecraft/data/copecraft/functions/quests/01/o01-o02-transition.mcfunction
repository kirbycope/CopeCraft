# Transition from Quests 01's Objective 1 to Objective 2

# Remove relevant scoreboard
scoreboard objectives remove copecraft-wheat-seeds-picked-up
# Remove "current" Objective tracker
bossbar remove copecraft:bossbar-q1o1
# Set the Objective to "2"
scoreboard players set @a copecraft-quest-objective 2
# Remove white text from quest tracker
scoreboard players reset Find copecraft-quest
team leave Find
# Add green text to Tracker
scoreboard players set §aFind copecraft-quest 9
team join suffix-wheat-seeds-green §aFind

# [Bossbar] Objective Tracker - "Plant Wheat Seeds"
bossbar add copecraft:bossbar-q1o2 "Plant Wheat Seeds (0/3)"
bossbar set copecraft:bossbar-q1o2 players @a
