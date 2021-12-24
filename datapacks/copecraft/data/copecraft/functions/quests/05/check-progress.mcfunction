## Objective 1 - "Harvest Wheat" ##

execute if entity @a[scores={copecraft-quest-objective=1,copecraft-wheat-mined=1..}] run function copecraft:quests/04/o01-o02-transition

## Objective 2 - "Bake Bread" ##

execute if entity @a[scores={copecraft-quest-objective=2,copecraft-bread-crafted=1..}] run function copecraft:quests/04/end
