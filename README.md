# CopeCraft

## Installation
1. Download the [zip file](https://github.com/kirbycope/CopeCraft/archive/refs/heads/main.zip)
1. Unarchive zip contents into the [Saves folder](https://help.minecraft.net/hc/en-us/articles/4409159214605-Managing-Data-and-Game-Storage-in-Minecraft-Java-Edition) of Minecraft Java Edition

![Screenshot](/halfhill.png)

## Background

This started when I looked at updating [OneBlock](https://ijaminecraft.com/map/oneblock/) from `1.16` to `1.18`. As I started to dive into the code and study line-by-line I would google each command to find some documentation. Unfortunatly Mojang doesn't seem to offer a lot to that effect so I relied on fan wikis, forums, and stack arqade, and youtube. Once I got comfertable with the code I decided that I actually wanted to make my own thing. We played a lot of OneBlock, SkyBlock, and Hypixel in 2021 so I started thinking about what was fun about those experiences.

### Game Design

#### Where to "Start"?
I knew I wanted a [SkyBlock](https://ijaminecraft.com/map/oneblock/) of some sorts; a void with floating islands. I liked the "Infinite Block" in OneBlock, but we had a [challenege to stay in the OneBlock Tutorial](https://www.youtube.com/watch?v=cJLI-uavbic) and that was a lot of fun. The main limiter in that challenge was lack of lava (and strongholds too but that's literal end game stuff). Having lava and water to make a [cobblestone generator](https://www.youtube.com/watch?v=eqhY4J2XIWQ) was great if we had a starting island, like [Ultimate Sky Islands](https://www.minecraftmaps.com/survival-maps/ultimate-sky-islands).

#### Inspiration Island
So, I needed an island and thought of the [Tiller's Farm](https://www.wowhead.com/faction=1272/the-tillers) from World of Warcraft. That farm you went to, cleaned up, and eventually did quests for the townsfolk. I thought that was a great idea for farm sim starter. The farm was compact and easy enough to rough out in-game. I found an image of the farm online and drew a grid over it using MS Paint.
![MS Paint](/_documentation/2021-12-18_21-11-38.png)

#### Creating the Map
I had done [some videos using superflat worlds](https://www.youtube.com/c/TimothyCopedotcom/search?query=minecraft%20minute) and [Edit Save Data video](https://www.youtube.com/watch?v=Kj18XY_SZA8) (so I could make a hardcore OneBlock). I wanted to spawn at 0 0 0 so I had to [create a void](https://github.com/kirbycope/CopeCraft/wiki/Create-a-Void-World) with a single block to build off of.

#### Macguffin
Now that I had an island I felt I needed a reason to be there. I thought of Stardew Valley and Rune Factory where the trope is that a estranged relative has a farm they let go in their old age and it's up to you to save the family farm or whatever. My wife has a great uncle Eric (still alive, btw) and he aged out of his 90 acre property so I ran with that. I got started working on a deed to the farm and a letter explaining the situation to go with it. I [couldn't make a personalized letter](https://bugs.mojang.com/browse/MC-103171) and the deed took up precious inventory so I settled on a basic letter using a [book generator](https://minecraft.tools/en/book.php).

#### Quest Chain
I started with gathering, planting, and farming wheat as the 3 objectives for 1 quest. I wanted to be like Hypixel SkyBlock and World of Warcraft as far as quest trackers go. So the `bossbar` would display the current objective's status and the `sidebar` would display overall quest progress. When an objective was complete it would turn green in the side bar. Once all objectives were complete the quest rewards the player with a sound effect and XP. [I made a video of that build](https://www.youtube.com/watch?v=UzjNcDLpynY).

##### Problems with the Objective Tracker
I had used [team](https://minecraft.fandom.com/wiki/Commands/team)'s `prefix` to style text and used [text formatting codes](https://minecraft.fandom.com/wiki/Formatting_codes) to style player names in the score board. It was quite messy and immeditaly clearly an issue when quest had the same item as pat of two objectives.
```
team modify q101 prefix {"text":"Harvest Wheat "}
team join q1o1 Seeds
```
So I did a refactor. Instead of using keywords for objectives I would simply use numbers and a suffix.
```
team modify q1o1 suffix {"text":". Harvest Wheat Seeds"}
team join q1o1 1
```
In both cases I had to remove the incomplete (white) "objective" `1` and then add `§a1` to the green team when an objective was complete. This is done in the `o##-o##-transition.mcfunction` script(s). The scoreboard gets cleared when the quest is "turned in" in the `end.mcfunction` script.

#### PoC Complete, Now What?
I added more quests. I even drew some post-it notes with Beetle from the Legend of Zelda showing up in a sky-ship-shop (a portmanteau of is appearances in [Wind Waker](https://www.zeldadungeon.net/wiki/images/2/21/Beedle%27s-Shop-Ship.png) and [Skyward Sword](https://www.zeldadungeon.net/wiki/images/c/cb/Beedle%27s_Air_Shop_-_Skyward_Sword_Wii.png)) when he noticed your campfire. I played through a couple times and I found the pacing to be killed during the Tutorial. So I reworked the order of quests and modifeid the the map. Map changes included things like placing wheat to harvest instead of waiting for some to grow and leaving a sapling in a pot in case the trees didn't drop one. Things I might not have considered if I didn't play through it myself dozens of times checking the quest tracking system. Oh, and "Beetle" was cut becuase it's a Survival map and not an Adventure map, so having anything come swooping in is a real challenge. So I opted for what other skyblock games do and just have seed island in the distance.
![Quest Chain](/_documentation/quest-chain.png)

#### Adding Non-Player Characters
I wanted to add my boys to the game. We spent the summer playing a Hypixel SykBlock Co-op as a family and they loved playing Animal Crossing with mom before that. So Timmy and Tommy Nook we're added to the game!
![BoatCraft](/_documentation/boat-craft.png)

I set a block at `42 -1 42` and and made a shipwreck standing up to serve as a store.
![Shipwreck Store](/_documentation/shipwreck-store.png)

I tried having the Villagers as kids but they wouldn't do trades or even trigger the "TalkedToVillager" statistic. So, lorewise, they have been shipwrcked a while. They have a theme song that plays when you enter the store and colorful (a feature added in patch 1.16 IIRC) `title` text.

#### Store Location
I wanted the stores to be static and bigger inside than out and I setteld on having warp points. If you step on the welcome mat, you get warped to the store; way up above the clouds where a player would have a hard time finding it. The stores are directly above so there is almost no load time. Thay are so high in fact you cant see them from the island I built. At first I had them in the cloud layer but they looked obvious. It's now in a sweet spot where the chunck is loaded but objects are still too far apart to render. I eventaully added a function to change the game mode to Adventure mode if you warp to a store so that you cant tear the place apart (from the inside). You are back on Survial if you are warped out.

#### What to Sell to Continue the Gameplay?
I thought long and hard about what I needed (that they being traders might offer) and what I could see from the farm. I settled on Tim[my] wanting plants/food and Tom[my] wanting blocks/materials. The farm has wheat and oak to offer in return. So Tim gives you a water bucket for wheat and Tom gives you a lava bucket for oak. That solves the aformentioned problem of getting a lava generator. You can also use 10 lava buckets to make an obsidian portal and hop to the Nether (which is currently unrestricted).

#### A New [Non-]Player Has Entered!
I also wanted my wife to have a presence in the game. She was awesome helping me talk through gameplay and map design. Great feedback I wasn't always ready to hear. We love Studio Ghilbli and Zelda. So I eventually came around to using Kiki the witch and styling the [Witch Hut](https://minecraftpc.fandom.com/wiki/Witch_Hut)'s interior like those in [Link's Awakening](https://www.zeldadungeon.net/Zelda04/Walkthrough/S01/010.jpg) and [A Link Between Worlds](https://static.wikia.nocookie.net/zelda/images/e/e6/Witch.png). While figuring out how to decorate I made a video about [placing candles on skulls](https://www.youtube.com/watch?v=e1xp99aI0yU).

#### Wait, What's Happening?
I wanted a quest log, like most RPGs, so I cant track what the heck is going on and what I need to do next. I looked and it seems you can't update a book. So I have to `clear` the item and replace it. Since I am using mcfunctions I dont get things like string builders so I had to have multiple copies of the book. Pro tip: create an account on minecraft.tools to save your work.

#### Is that it?
I have [some code](https://github.com/kirbycope/CopeCraft/wiki/Summon-Chest-Minecart-to-Your-Head) for summoning a "Menu Chest" to the player. There is a nice video by Cloud_Wolf on [how to do a chest menu](https://www.youtube.com/watch?v=OOuRyx0Ipe4). I joined the guy's Discord and he said he plans on doing an updated video with  tricks he finds himself using.
</br>
I also have  [some code](https://github.com/kirbycope/CopeCraft/wiki/Create-Particle-Over-Your-Head) for particles over your head and [some code](https://github.com/kirbycope/CopeCraft/wiki/Hover-Item-Over-Your-Head) for an item over your head. This is so a quest marker or shop keeper... something along those lines. I like to see what is possible and then operate within those parameters.
