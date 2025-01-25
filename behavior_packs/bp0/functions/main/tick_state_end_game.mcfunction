# Ticks during the end of the game
gamemode survival @a[m=adventure]
execute as @a run function environment/boss_arena/fog/clear
# Teleport the players in the boss arena back to the survival area if there is no portals, or dead bosses in the boss area
execute as @a[x=240.0,y=-7.0,z=-354.0,dx=-66,dy=34,dz=-140] unless entity @e[type=shapescape:portal,x=240.0,y=-7.0,z=-354.0,dx=-66,dy=34,dz=-140] unless entity @e[type=shapescape:choochoo_boss_dead,x=240.0,y=-7.0,z=-354.0,dx=-66,dy=34,dz=-140] run function warp/key_location/survival_spawn
# If there is a player in the boss fight area, keep the hostile mobs away. Otherwise we don't want to assign resources
# for this task because there is noone to see the mobs.
execute if entity @a[x=240.0,y=-7.0,z=-354.0,dx=-66,dy=34,dz=-140] as @e[family=monster,type=!shapescape:overworld_spider,x=240.0,y=-7.0,z=-354.0,dx=-66,dy=34,dz=-140] at @s run function main/tick_state_end_game/clear_mobs