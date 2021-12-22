## Objective 1 - "Mine Stone" ##

# (1/8)
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-stone-mined=1}] run bossbar set copecraft:bossbar-q3o1 value 12
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-stone-mined=1}] run bossbar set copecraft:bossbar-q3o1 name [{"text":"Objective: "},{"text":"Mine Stone ","color":"yellow"},{"text":"(1/8)"}]
# (2/8)
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-stone-mined=2}] run bossbar set copecraft:bossbar-q3o1 value 24
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-stone-mined=2}] run bossbar set copecraft:bossbar-q3o1 name [{"text":"Objective: "},{"text":"Mine Stone ","color":"yellow"},{"text":"(2/8)"}]
# (3/8)
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-stone-mined=3}] run bossbar set copecraft:bossbar-q3o1 value 36
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-stone-mined=3}] run bossbar set copecraft:bossbar-q3o1 name [{"text":"Objective: "},{"text":"Mine Stone ","color":"yellow"},{"text":"(3/8)"}]
# (4/8)
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-stone-mined=4}] run bossbar set copecraft:bossbar-q3o1 value 48
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-stone-mined=4}] run bossbar set copecraft:bossbar-q3o1 name [{"text":"Objective: "},{"text":"Mine Stone ","color":"yellow"},{"text":"(4/8)"}]
# (5/8)
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-stone-mined=5}] run bossbar set copecraft:bossbar-q3o1 value 60
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-stone-mined=5}] run bossbar set copecraft:bossbar-q3o1 name [{"text":"Objective: "},{"text":"Mine Stone ","color":"yellow"},{"text":"(5/8)"}]
# (6/8)
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-stone-mined=6}] run bossbar set copecraft:bossbar-q3o1 value 72
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-stone-mined=6}] run bossbar set copecraft:bossbar-q3o1 name [{"text":"Objective: "},{"text":"Mine Stone ","color":"yellow"},{"text":"(6/8)"}]
# (7/8)
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-stone-mined=7}] run bossbar set copecraft:bossbar-q3o1 value 84
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-stone-mined=7}] run bossbar set copecraft:bossbar-q3o1 name [{"text":"Objective: "},{"text":"Mine Stone ","color":"yellow"},{"text":"(7/8)"}]
# (8/8)
execute if entity @a[scores={copecraft-quest-objective=1,copecraft-stone-mined=8..}] run function copecraft:quests/03/o01-o02-transition

## Objective 2 - "Craft Furnace" ##

execute if entity @a[scores={copecraft-quest-objective=2,copecraft-furnace-crafted=1}] run function copecraft:quests/03/end
