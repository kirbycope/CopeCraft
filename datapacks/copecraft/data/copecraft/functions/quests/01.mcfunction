scoreboard players set @a copecraft-quest-id 1
scoreboard players set @a copecraft-trigger 0
bossbar add copecraft:bossbar1 "Plant Seeds (0/3)"
#bossbar set copecraft:bossbar1 name "Plant Seeds (1/3)"
bossbar set copecraft:bossbar1 players @a

#scoreboard objectives add copecraft-quest dummy {"text":"Quests", "color":"gold"}
#scoreboard objectives setdisplay sidebar copecraft-quest
#scoreboard players set §cObjective_1 copecraft-quest 0

scoreboard objectives add copecraft-wheat-planted minecraft.used:minecraft.wheat_seeds {"text":"Seeds Planted", "color":"gold"}
scoreboard objectives setdisplay sidebar copecraft-wheat-planted
scoreboard players set @s copecraft-wheat-planted 0
