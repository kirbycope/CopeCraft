## Objective 1 - "Harvest Wheat" ##

# (1/3)
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-wheat-mined=1}] run bossbar set copecraft:bossbar-q5o1 value 33
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-wheat-minedp=1}] run bossbar set copecraft:bossbar-q5o1 name [{"text":"Objective: "},{"text":"Harvest Wheat","color":"yellow"},{"text":" (1/3)"}]
# (2/3)
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-wheat-mined=2}] run bossbar set copecraft:bossbar-q5o1 value 66
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-wheat-minedp=2}] run bossbar set copecraft:bossbar-q5o1 name [{"text":"Objective: "},{"text":"Harvest Wheat","color":"yellow"},{"text":" (2/3)"}]
# (3/3)
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-wheat-mined=3..}] run function copecraft:quests/0/o01-o02-transition

## Objective 2 - "Bake Bread" ##

execute if entity @a[scores={copecraft-quest-objective=2,copecraft-bread-crafted=1..}] run function copecraft:quests/05/end
