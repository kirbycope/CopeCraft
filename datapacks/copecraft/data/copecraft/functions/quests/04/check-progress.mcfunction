## Objective 1 - "Craft Wooden Hoe" ##

execute if entity @a[scores={copecraft-quest-objective=1,copecraft-wooden-hoe-crafted=1..}] run function copecraft:quests/04/o01-o02-transition

## Objective 2 - "Till Dirt" ##

# (1/3)
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-wooden-hoe-used=1}] run bossbar set copecraft:bossbar-q4o2 value 33
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-wooden-hoe-used=1}] run bossbar set copecraft:bossbar-q4o2 name [{"text":"Objective: "},{"text":"Till Soil","color":"yellow"},{"text":" (1/3)"}]
# (2/3)
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-wooden-hoe-used=2}] run bossbar set copecraft:bossbar-q4o2 value 66
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-wooden-hoe-used=2}] run bossbar set copecraft:bossbar-q4o2 name [{"text":"Objective: "},{"text":"Till Soil","color":"yellow"},{"text":" (2/3)"}]
# (3/3)
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-wooden-hoe-used=3..}] run function copecraft:quests/04/end
