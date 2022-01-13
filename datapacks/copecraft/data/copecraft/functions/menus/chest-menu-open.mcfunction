# Teleport the Chest Minecart to the player's face if one already exists
execute if entity @e[tag=menu_chest] at @s run tp @e[tag=menu_chest] ~ ~1.2 ~

# Summon a Chest Minecart if one does not already exist
execute unless entity @e[tag=menu_chest] at @s run summon minecraft:chest_minecart ~ ~1.2 ~ {CustomDisplayTile:1b,CustomName:'{"text":"Chest Menu"}',DisplayState:{Name:"minecraft:air"},Silent:1b,Tags:["invisible_minecart","menu_chest"]}

## SkyBlock Menu ##

item replace entity @e[tag=menu_chest] container.4 with minecraft:player_head{display:{Name:'{"text":"Your SkyBlock Profile","color":"white","italic":false}'}}
item replace entity @e[tag=menu_chest] container.10 with minecraft:diamond_sword{display:{Name:'{"text":"Your Skills","color":"white","italic":false}'}}
item replace entity @e[tag=menu_chest] container.11 with minecraft:painting{display:{Name:'{"text":"Collection","color":"white","italic":false}'}}
item replace entity @e[tag=menu_chest] container.12 with minecraft:book{display:{Name:'{"text":"Recipe Book","color":"white","italic":false}'}}
item replace entity @e[tag=menu_chest] container.13 with minecraft:emerald{display:{Name:'{"text":"Trades","color":"white","italic":false}'}}
item replace entity @e[tag=menu_chest] container.14 with minecraft:writable_book{display:{Name:'{"text":"Quest Log","color":"white","italic":false}'}}
item replace entity @e[tag=menu_chest] container.15 with minecraft:clock{display:{Name:'{"text":"Calendar and Events","color":"white","italic":false}'}}
item replace entity @e[tag=menu_chest] container.16 with minecraft:chest{display:{Name:'{"text":"Storage","color":"white","italic":false}'}}
item replace entity @e[tag=menu_chest] container.20 with minecraft:potion{Potion:"water",display:{Name:'{"text":"Active Effects","color":"white","italic":false}'}}
item replace entity @e[tag=menu_chest] container.21 with minecraft:bone{display:{Name:'{"text":"Pets","color":"white","italic":false}'}}
item replace entity @e[tag=menu_chest] container.22 with minecraft:crafting_table{display:{Name:'{"text":"Crafting Table","color":"white","italic":false}'}}
item replace entity @e[tag=menu_chest] container.23 with minecraft:leather_chestplate{display:{color:10617087},Name:'{"text":"Wardrobe","color":"white","italic":false}'}
