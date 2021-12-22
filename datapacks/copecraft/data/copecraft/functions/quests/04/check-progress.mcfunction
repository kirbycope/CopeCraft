## Objective 1 - "Furnace Oak Log" ##

execute if entity @a[scores={copecraft-quest-objective=1,copecraft-charcoal-picked-up=1}] run function copecraft:quests/04/o01-o02-transition

## Objective 2 - "Craft Campfire" ##
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-campfire-crafted=1}] run function copecraft:quests/04/o02-o03-transition

## Objective 3 - "Place Campfire" ##
execute if entity @a[scores={copecraft-quest-objective=3,copecraft-campfire-used=1}] run function copecraft:quests/04/end
