# Teleport the Chest Minecart to the player's face if one already exists
execute if entity @e[tag=menu_chest] at @s run tp @e[tag=menu_chest] ~ ~1.2 ~

# Summon a Chest Minecart if one does not already exist
execute unless entity @e[tag=menu_chest] at @s run summon minecraft:chest_minecart ~ ~1.2 ~ {Silent:1b,Tags:["menu_chest"],CustomDisplayTile:1b,CustomName:'{"text":"Menu"}',DisplayState:{Name:"minecraft:air"}}

# Put item in center of Chest Minecart
item replace entity @e[tag=menu_chest] container.13 with minecraft:barrier
