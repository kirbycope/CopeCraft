# Summom the minecart to the player's face
execute at @e[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{display:{Name:'[{"text":"Menu","italic":false}]'}}}}] run summon minecraft:chest_minecart ~ ~1.2 ~ {CustomDisplayTile:1b,CustomName:'"Menu Chest"',DisplayState:{Name:"minecraft:air"},Silent:1b,Tags:["menu_chest"]}

# Change block in the cart to a command block, facing up (so that the facing up resource is used)
execute as @e[tag=menu_chest] run data merge entity @s {CustomDisplayTile:1,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"up"}},DisplayOffset:4}
