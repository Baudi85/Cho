# Ticks during the lobby state
gamemode adventure @a[m=survival]
effect @a[m=adventure] regeneration 10 10 true
effect @a[m=adventure] saturation 10 10 true
clear @a[m=!creative]
# Teleport everyone outside of the area back to the lobby room
# The spectator and creative selector MUST be seprate because minecraft is dumb
execute as @a[m=!creative] if entity @s[m=!spectator] unless entity @s[x=140.0,y=-18.0,z=-314.0,dx=-13,dy=8,dz=-15] run function warp/key_location/lobby