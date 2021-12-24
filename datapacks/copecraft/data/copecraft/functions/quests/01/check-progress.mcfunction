## Objective 1 - "Chop Oak Logs" ##

execute if entity @a[scores={copecraft-quest-objective=1,copecraft-oak-logs-mined=1..}] run function copecraft:quests/01/o01-o02-transition

## Objective 2 - "Craft Wood Planks" ##

# (1/4)
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-oak-planks-crafted=1}] run bossbar set copecraft:bossbar-q1o2 value 25
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-oak-planks-crafted=1}] run bossbar set copecraft:bossbar-q1o2 name [{"text":"Objective: "},{"text":"Craft Wood Planks","color":"yellow"},{"text":" (1/4)"}]
# (2/4)
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-oak-planks-crafted=2}] run bossbar set copecraft:bossbar-q1o2 value 50
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-oak-planks-crafted=2}] run bossbar set copecraft:bossbar-q1o2 name [{"text":"Objective: "},{"text":"Craft Wood Planks","color":"yellow"},{"text":" (2/4)"}]
# (3/4)
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-oak-planks-crafted=3}] run bossbar set copecraft:bossbar-q1o2 value 75
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-oak-planks-crafted=3}] run bossbar set copecraft:bossbar-q1o2 name [{"text":"Objective: "},{"text":"Craft Wood Planks","color":"yellow"},{"text":" (3/4)"}]
# (4/4)
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-oak-planks-crafted=4..}] run function copecraft:quests/01/o02-o03-transition

## Objective 3 - "Make Crafting Table" ##

execute if entity @a[scores={copecraft-quest-objective=3,copecraft-crafting-table-crafted=1..}] run function copecraft:quests/01/end
