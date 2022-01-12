# Summon the Chest Minecart if one does not already exist
execute unless entity @e[tag=menu_chest] run function copecraft:menus/chest-menu-summon

# Teleport the Chest Minecart to the player's face
execute at @e[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{display:{Name:'[{"text":"Menu","italic":false}]'}}}}] run tp @e[tag=menu_chest] ~ ~1.2 ~ 

# Put item in center of chest_minecart
item replace entity @e[tag=menu_chest] container.13 with minecraft:barrier
