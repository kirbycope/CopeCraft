## Objective 1 - "Chop Oak Logs" ##

# (1/3)
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-oak-logs-mined=1}] run bossbar set copecraft:bossbar-q2o1 value 33
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-oak-logs-mined=1}] run bossbar set copecraft:bossbar-q2o1 name [{"text":"Objective: "},{"text":"Chop Oak Logs ","color":"yellow"},{"text":"(1/3)"}]
# (2/3)
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-oak-logs-mined=2}] run bossbar set copecraft:bossbar-q2o1 value 66
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-oak-logs-mined=2}] run bossbar set copecraft:bossbar-q2o1 name [{"text":"Objective: "},{"text":"Chop Oak Logs ","color":"yellow"},{"text":"(2/3)"}]
# (3/3)
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-oak-logs-mined=3..}] run function copecraft:quests/02/o01-o02-transition

## Objective 2 - "Craft Wood Planks" ##

# (1/4)
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-oak-planks-crafted=1}] run bossbar set copecraft:bossbar-q2o2 value 25
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-oak-planks-crafted=1}] run bossbar set copecraft:bossbar-q2o2 name [{"text":"Objective: "},{"text":"Craft Wood Planks ","color":"yellow"},{"text":"(1/4)"}]
# (2/4)
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-oak-planks-crafted=2}] run bossbar set copecraft:bossbar-q2o2 value 50
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-oak-planks-crafted=2}] run bossbar set copecraft:bossbar-q2o2 name [{"text":"Objective: "},{"text":"Craft Wood Planks ","color":"yellow"},{"text":"(2/4)"}]
# (3/4)
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-oak-planks-crafted=3}] run bossbar set copecraft:bossbar-q2o2 value 75
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-oak-planks-crafted=3}] run bossbar set copecraft:bossbar-q2o2 name [{"text":"Objective: "},{"text":"Craft Wood Planks ","color":"yellow"},{"text":"(3/4)"}]
# (4/4)
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-oak-planks-crafted=4..}] run function copecraft:quests/02/o02-o03-transition

## Objective 3 - "Make Crafting Table" ##

execute if entity @a[scores={copecraft-quest-objective=3,copecraft-crafting-table-crafted=1}] run function copecraft:quests/01/end
