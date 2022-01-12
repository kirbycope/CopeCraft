# Summon new chest if there isn't one
execute unless entity @e[tag=menu-chest] run summon minecraft:chest_minecart -42 320 -42 {CustomDisplayTile:1b,CustomName:'"Menu Chest"',DisplayState:{Name:"minecraft:air"},Silent:1b,Tags:["menu-chest"]}

# Change block in the cart to a command block, facing up (so that the facing up resource is used)
execute as @e[tag=menu-chest,tag=!invisible] run data merge entity @s {CustomDisplayTile:1,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"up"}},DisplayOffset:4}

# Set the tag "invisible" (so we don't change the display tile again)
execute as @e[tag=menu-chest,tag=!invisible] run tag @s add invisible

# Teleport the chest minecart to player's face
execute at @e[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{display:{Name:'[{"text":"Menu","italic":false}]'}}}}] run tp @e[tag=menu-chest] ~ ~1.2 ~

# Put item in center of chest_minecart
item replace entity @e[tag=menu-chest] container.13 with minecraft:barrier