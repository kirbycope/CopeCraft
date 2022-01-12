# Summon the Chest Minecart if one does not already exist
execute unless entity @e[tag=menu_chest] run execute as @e[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{display:{Name:'[{"text":"Menu","italic":false}]'}}}}] run function copecraft:menus/chest-menu-summon

# Change block in the Chest Minecart to a command block, facing up (so that the facing up resource is used)
data merge entity @s[type=chest_minecart] {CustomDisplayTile:1,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"up"}},DisplayOffset:4}

# Teleport the Chest Minecart to the player's face
execute at @e[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{display:{Name:'[{"text":"Menu","italic":false}]'}}}}] run tp @e[tag=menu_chest] ~ ~1.2 ~ 

# Put item in center of Chest Minecart
item replace entity @e[tag=menu_chest] container.13 with minecraft:barrier
