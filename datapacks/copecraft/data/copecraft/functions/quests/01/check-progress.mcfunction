## Objective 1 - "Find Wheat Seeds" ##

# (1/3)
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-wheat-seeds-picked-up=1}] run bossbar set copecraft:bossbar-q1o1 value 33
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-wheat-seeds-picked-up=1}] run bossbar set copecraft:bossbar-q1o1 name "Find Wheat Seeds (1/3)"
# (2/3)
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-wheat-seeds-picked-up=2}] run bossbar set copecraft:bossbar-q1o1 value 66
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-wheat-seeds-picked-up=2}] run bossbar set copecraft:bossbar-q1o1 name "Find Wheat Seeds (2/3)"
# (3/3)
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-wheat-seeds-picked-up=3..}] run function copecraft:quests/01/o01-o02-transition

## Objective 2 - "Plant Wheat Seeds" ##

# (1/3)
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-wheat-seeds-used=1}] run bossbar set copecraft:bossbar-q1o2 value 33
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-wheat-seeds-used=1}] run bossbar set copecraft:bossbar-q1o2 name "Plant Wheat Seeds (1/3)"
# (2/3)
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-wheat-seeds-used=2}] run bossbar set copecraft:bossbar-q1o2 value 66
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-wheat-seeds-used=2}] run bossbar set copecraft:bossbar-q1o2 name "Plant Wheat Seeds (2/3)"
# (3/3)
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-wheat-seeds-used=3..}] run function copecraft:quests/01/o02-o03-transition

## Objective  - "Harvest Wheat" ##

# (1/3)
execute if entity @a[scores={copecraft-quest-objective=3,copecraft-wheat-mined=1}] run bossbar set copecraft:bossbar-q1o3 value 33
execute if entity @a[scores={copecraft-quest-objective=3,copecraft-wheat-mined=1}] run bossbar set copecraft:bossbar-q1o3 name "Harvest Wheat (1/3)"
# (2/3)
execute if entity @a[scores={copecraft-quest-objective=3,copecraft-wheat-mined=2}] run bossbar set copecraft:bossbar-q1o3 value 66
execute if entity @a[scores={copecraft-quest-objective=3,copecraft-wheat-mined=2}] run bossbar set copecraft:bossbar-q1o3 name "Harvest Wheat (2/3)"
# (3/3)
execute if entity @a[scores={copecraft-quest-objective=3,copecraft-wheat-mined=3..}] run function copecraft:quests/01/end