# Teleport the Chest Minecart to the player's face if one already exists
execute if entity @e[tag=menu_chest] at @s run tp @e[tag=menu_chest] ~ ~1.2 ~

# Summon a Chest Minecart if one does not already exist
execute unless entity @e[tag=menu_chest] at @s run summon minecraft:chest_minecart ~ ~1.2 ~ {CustomDisplayTile:1b,CustomName:'{"text":"Chest Menu"}',DisplayState:{Name:"minecraft:air"},Silent:1b,Tags:["invisible_minecart","menu_chest"]}

## SkyBlock Menu ##
item replace entity @e[tag=menu_chest] container.4 with minecraft:player_head
item replace entity @e[tag=menu_chest] container.10 with minecraft:diamond_sword
item replace entity @e[tag=menu_chest] container.11 with minecraft:painting
item replace entity @e[tag=menu_chest] container.12 with minecraft:book
item replace entity @e[tag=menu_chest] container.13 with minecraft:emerald
item replace entity @e[tag=menu_chest] container.14 with minecraft:writable_book
item replace entity @e[tag=menu_chest] container.15 with minecraft:clock
item replace entity @e[tag=menu_chest] container.16 with minecraft:chest
item replace entity @e[tag=menu_chest] container.20 with minecraft:potion{Potion:"water"}
item replace entity @e[tag=menu_chest] container.21 with minecraft:bone
item replace entity @e[tag=menu_chest] container.22 with minecraft:crafting_table
item replace entity @e[tag=menu_chest] container.23 with minecraft:leather_chestplate{display:{color:10617087}}
