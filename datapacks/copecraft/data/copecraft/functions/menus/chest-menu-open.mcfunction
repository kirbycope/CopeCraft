# Summon new chest if there isn't one
execute unless entity @e[tag=menu-chest] run summon minecraft:chest_minecart -42 320 -42 {CustomName:'"Menu Chest"',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Silent:1,Tags:["menu-chest"]}

data merge entity @s[tag=menu-chest] {}

# Teleport the chest minecart to player's face
execute at @e[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{display:{Name:'[{"text":"Menu","italic":false}]'}}}}] run tp @e[tag=menu-chest] ~ ~1.2 ~

# Put item in center of chest_minecart
item replace entity @e[tag=menu-chest] container.13 with minecraft:barrier
