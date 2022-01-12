# Teleport the Chest Minecart if one already exists
execute if entity @e[tag=menu_chest] run execute at @s run tp @e[tag=menu_chest] ~ ~1.2 ~ 

# Summon the Chest Minecart if one does not already exist
execute unless entity @e[tag=menu_chest] run execute at @s run summon minecraft:chest_minecart ~ ~1.2 ~ {Silent:1b,Tags:["menu_chest"],CustomDisplayTile:1b,CustomName:'{"text":"Menu"}',DisplayState:{Name:"minecraft:air"}}

# Change block in the Chest Minecart to a command block, facing up (so that the facing up resource is used)
execute as @e[tag=menu_chest] run data merge entity @s[type=chest_minecart] {CustomDisplayTile:1,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"up"}},DisplayOffset:4}

# Put item in center of Chest Minecart
item replace entity @e[tag=menu_chest] container.13 with minecraft:barrier
