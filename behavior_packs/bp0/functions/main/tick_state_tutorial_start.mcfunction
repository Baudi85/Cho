# Ticks during the start of the game
titleraw @a actionbar {"rawtext":[{"translate":"actionbar.tip.tutorial_start"}]}
# Teleport the players out of the lobby to the tutorial area if they're there somehow
execute as @a[x=128.0,y=-16.0,z=-329.0,dx=8,dy=4,dz=13] run function warp/key_location/tutorial_start
# Player settings for that state
spawnpoint @a 132 -17 -305
gamemode adventure @a[m=survival]