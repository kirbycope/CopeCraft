# Objective Format
team add suffix-wheat-green
team modify suffix-wheat-green suffix {"text":" Wheat","color":"green"}
team add suffix-wheat-seeds-green
team modify suffix-wheat-seeds-green suffix {"text":" Wheat Seeds","color":"green"}

## Objective 1 - "Find Wheat Seeds" ##

# (1/3) Wheat Seeds (picked up)
# copecraft-quest-objective
execute if entity @a[scores={copecraft-wheat-picked-up=1}] run bossbar set copecraft:bossbar-q1o1 value 33
execute if entity @a[scores={copecraft-wheat-picked-up=1}] run bossbar set copecraft:bossbar-q1o1 name "Find Wheat Seeds (1/3)"

# (2/3) Wheat Seeds (picked up)
execute if entity @a[scores={copecraft-wheat-picked-up=2}] run bossbar set copecraft:bossbar-q1o1 value 66
execute if entity @a[scores={copecraft-wheat-picked-up=2}] run bossbar set copecraft:bossbar-q1o1 name "Find Wheat Seeds (2/3)"

# (3/3)  Wheat Seeds (picked up)
execute if entity @a[scores={copecraft-wheat-picked-up=3..}] run bossbar remove copecraft:bossbar-q1o1
execute if entity @a[scores={copecraft-wheat-picked-up=3..}] run scoreboard players set @s copecraft-quest-objective 2
# Remove white text from quest tracker
execute if entity @a[scores={copecraft-wheat-picked-up=3..}] run scoreboard players reset Find copecraft-quest
execute if entity @a[scores={copecraft-wheat-picked-up=3..}] run team leave Find
# Add green text to Tracker
execute if entity @a[scores={copecraft-wheat-picked-up=3..}] run scoreboard players set §aFind copecraft-quest 9
execute if entity @a[scores={copecraft-wheat-picked-up=3..}] run team join suffix-wheat-seeds-green §aFind

## Objective 2 - "Plant Wheat Seeds" ##
