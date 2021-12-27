# "Spawn Mule for when a user clicks"
summon mule ~ ~1 ~ {Invulnerable:1,Silent:1,NoAI:1,CanPickUpLoot:1b,Tame:1,CustomName:"\"Menu\"",ActiveEffects:[{Id:14,Amplifier:0,Duration:999999}],SaddleItem:{id:"saddle",Count:1},ChestedHorse:1}

# Tag user so that the mule doesn't keep spawning with each tick
tag @a[tag=!menu] add menu

tellraw @a "open"
