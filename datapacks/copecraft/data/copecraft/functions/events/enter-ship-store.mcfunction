tp @s -42 316 -39


# NPC - Tim[my]
#summon villager -44 316 -42 {CustomNameVisible:1b,CustomName:'{"text":"Tim","color":"blue"}',Attributes:[{Name:"generic.knockback_resistance",Base:1},{Name:"generic.movement_speed",Base:.001}]}
#summon villager ~ ~1 ~ {VillagerData:{profession:nitwit,level:2,type:jungle},Invulnerable:1,CustomName:"\"Tim\"",Offers:{Recipes:[{buy:{id:wheat,Count:64},sell:{id:water_bucket,Count:1},rewardExp:0b,maxUses:9999999}]}}
execute unless entity @e[name="Tim"] run summon villager -44 316 -42 {CustomNameVisible:1b,CustomName:'{"text":"Tim","color":"blue"}',Attributes:[{Name:"generic.knockback_resistance",Base:1},{Name:"generic.movement_speed",Base:.001}],VillagerData:{profession:nitwit,level:2,type:jungle},Offers:{Recipes:[{buy:{id:wheat,Count:64},sell:{id:water_bucket,Count:1},rewardExp:0b,maxUses:9999999}]}}

# NPC - Tom[my]
#summon villager -41 316 -43 {CustomNameVisible:1b,CustomName:'{"text":"Tom","color":"red"}',Attributes:[{Name:"generic.knockback_resistance",Base:1},{Name:"generic.movement_speed",Base:.001}]}
#summon villager ~ ~1 ~ {VillagerData:{profession:nitwit,level:2,type:savanna},Invulnerable:1,CustomName:"\"Tom\"",Offers:{Recipes:[{buy:{id:oak_log,Count:64},sell:{id:lava_bucket,Count:1},rewardExp:0b,maxUses:9999999}]}}
execute unless entity @e[name="Tom"] run summon villager -44 316 -42 {CustomNameVisible:1b,CustomName:'{"text":"Tom","color":"red"}',Attributes:[{Name:"generic.knockback_resistance",Base:1},{Name:"generic.movement_speed",Base:.001}],VillagerData:{profession:nitwit,level:2,type:savanna},Offers:{Recipes:[{buy:{id:oak_log,Count:64},sell:{id:lava_bucket,Count:1},rewardExp:0b,maxUses:9999999}]}}


# Announce game zone
title @s subtitle [{"text":"T","color":"yellow"},{"text":"h","color":"#ebd039"},{"text":"e ","color":"gold"},{"text":"S","color":"#eb7139"},{"text":"h","color":"red"},{"text":"i","color":"#fe3f9e"},{"text":"p","color":"light_purple"},{"text":"w","color":"#de1fde"},{"text":"r","color":"dark_purple"},{"text":"e","color":"#7e1fde"},{"text":"c","color":"blue"},{"text":"k ","color":"#1f7ede"},{"text":"S","color":"dark_aqua"},{"text":"t","color":"#1fdede"},{"text":"o","color":"aqua"},{"text":"r","color":"#3ffe9e"},{"text":"e","color":"green"}]
title @s title {"text":""}

# Music
stopsound @a music
playsound music_disc.wait music @p -42 316 -42
