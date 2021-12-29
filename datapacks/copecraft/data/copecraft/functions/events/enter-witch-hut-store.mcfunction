tp @s 67 316 67

# NPC - Kiki
execute unless entity @e[name="Kiki"] run summon villager 69 316 70 {CustomNameVisible:1b,CustomName:'{"text":"Kiki","color":"dark_purple"}',Attributes:[{Name:"generic.knockback_resistance",Base:1},{Name:"generic.movement_speed",Base:.001}],VillagerData:{profession:librarian,level:2,type:swamp},Offers:{Recipes:[{buy:{id:bone,Count:64},sell:{id:glowstone,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:spider_eye,Count:64},sell:{id:redstone_block,Count:1},rewardExp:0b,maxUses:9999999}]}}

# Announce game zone
title @s subtitle {"text":"Kiki's Metaphysical Shop","color":"dark_purple"}
title @s title {"text":""}

# Music
stopsound @a music
playsound music_disc.cat music @p 69 316 69
