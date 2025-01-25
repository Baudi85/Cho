# Ticks during the survival part of the game
# Teleport the players out of the lobby and tutorial area into the survival area
execute as @a run function main/tick_state_survival/tp_out_of_tutorial
execute as @a run function environment/boss_arena/fog/clear
# Teleport the players in the boss arena back to the survival area
execute as @a[x=240.0,y=-7.0,z=-354.0,dx=-66,dy=34,dz=-140] run function warp/key_location/survival_spawn