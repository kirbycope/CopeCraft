# Summon new chest if there isn't one
execute unless entity @e[nbt={CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}] run summon minecraft:chest_minecart -42 320 -42 {CustomName:'"Menu Chest"',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Silent:1}

# Teleport the chest minecart to player's face
execute at @e[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{display:{Name:'[{"text":"Menu","italic":false}]'}}}}] run tp @e[type=minecraft:chest_minecart] ~ ~1.2 ~

# Put item in center of chest_minecart
item replace entity @e[type=minecraft:chest_minecart] container.13 with minecraft:gray_dye
