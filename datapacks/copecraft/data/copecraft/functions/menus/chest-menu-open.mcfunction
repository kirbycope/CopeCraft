# Summon a Chest Minecart if one does not already exist
execute unless entity @e[tag=menu_chest] run execute at @s run summon minecraft:chest_minecart ~ ~1.2 ~ {CustomDisplayTile:1b,CustomName:'{"text":"Chest Menu"}',DisplayState:{Name:"minecraft:air"},Silent:1b,Tags:["menu_chest"]}

# Teleport the Chest Minecart to the player's face
execute at @s run tp @e[tag=menu_chest] ~ ~1.2 ~ 

# Put item in center of Chest Minecart
item replace entity @e[tag=menu_chest] container.13 with minecraft:barrier
