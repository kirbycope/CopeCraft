scoreboard players set @a copecraft-quest-id 1
scoreboard players set @a copecraft-trigger 0
bossbar add copecraft:bossbar1 "Plant Seeds (0/3)"
#bossbar set copecraft:bossbar1 name "Plant Seeds (1/3)"
bossbar set copecraft:bossbar1 players @a
scoreboard objectives add copecraft-quest dummy {"text":"Quests", "color":"gold"}
scoreboard objectives setdisplay sidebar copecraft-quest
scoreboard players set §cPlanted copecraft-quest 0
