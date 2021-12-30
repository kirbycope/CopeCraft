# ════ Objective 1 - "Find Wheat Seeds" ════ #

# (1/3)
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-wheat-seeds-picked-up=1}] run bossbar set copecraft:bossbar-q5o1 value 33
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-wheat-seeds-picked-up=1}] run bossbar set copecraft:bossbar-q5o1 name [{"text":"Objective: "},{"text":"Find Wheat Seeds","color":"yellow"},{"text":" (1/3)"}]
# (2/3)
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-wheat-seeds-picked-up=2}] run bossbar set copecraft:bossbar-q5o1 value 66
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-wheat-seeds-picked-up=2}] run bossbar set copecraft:bossbar-q5o1 name [{"text":"Objective: "},{"text":"Find Wheat Seeds","color":"yellow"},{"text":" (2/3)"}]
# (3/3)
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-wheat-seeds-picked-up=3..}] run function copecraft:quests/05/o01-o02-transition

# ════ Objective 2 - "Plant Wheat Seeds" ════ #

# (1/3)
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-wheat-seeds-used=1}] run bossbar set copecraft:bossbar-q5o2 value 33
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-wheat-seeds-used=1}] run bossbar set copecraft:bossbar-q5o2 name [{"text":"Objective: "},{"text":"Plant Wheat Seeds","color":"yellow"},{"text":" (1/3)"}]
# (2/3)
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-wheat-seeds-used=2}] run bossbar set copecraft:bossbar-q5o2 value 66
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-wheat-seeds-used=2}] run bossbar set copecraft:bossbar-q5o2 name [{"text":"Objective: "},{"text":"Plant Wheat Seeds","color":"yellow"},{"text":" (2/3)"}]
# (3/3)
execute if entity @a[scores={copecraft-quest-objective=2,copecraft-wheat-seeds-used=3..}] run function copecraft:quests/05/end
