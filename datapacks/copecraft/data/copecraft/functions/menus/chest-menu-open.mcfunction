# Summon new chest if there isn't one
execute unless entity @e[tag=menu-chest] run summon minecraft:chest_minecart -42 320 -42 {CustomName:'"Menu Chest"',CustomDisplayTile:1,DisplayState:{Name:"minecraft:air"},Silent:1,Tags:["menu-chest"]}

# Teleport the chest minecart to player's face
execute at @e[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{display:{Name:'[{"text":"Menu","italic":false}]'}}}}] run tp @e[tag=menu-chest] ~ ~1.2 ~

# Put item in center of chest_minecart
#item replace entity @e[tag=menu-chest] container.13 with minecraft:barrier


# Change block in the cart to a command block, facing up
execute as @e[tag=menu-chest,tag=!invisible] run data merge entity @s[type=chest_minecart] {CustomDisplayTile:1,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"up"}},DisplayOffset:4}
# set the tag to invisible
execute as @e[tag=menu-chest,tag=!invisible] run tag @s add invisible
