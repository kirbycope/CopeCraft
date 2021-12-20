#scoreboard players set @s copecraft-quest-id 1
#scoreboard players set @s copecraft-trigger 0
#bossbar add copecraft:bossbar1 "Honest Work"
#bossbar set copecraft:bossbar1 players @s
#scoreboard objectives add copecraft-quest dummy {"text":"Quests", "color":"gold"}
#scoreboard objectives setdisplay sidebar copecraft-quest
#scoreboard players set §cSeeds_planted copecraft-quest 0
tell @a "Quest 01 started..."