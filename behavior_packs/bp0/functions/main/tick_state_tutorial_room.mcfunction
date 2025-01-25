# Ticks during when player is in tutorial room
titleraw @a actionbar {"rawtext":[{"translate":"actionbar.tip.tutorial_room"}]}
# Teleport the players out of the tunnel into the spider room if they're there somehow
execute as @a[x=129.0,y=-14.0,z=-311.0,dx=7,dy=-4,dz=17] run function warp/key_location/tutorial_room
# Player settings for that state
spawnpoint @a 125 -54 -287
gamemode adventure @a[m=survival]