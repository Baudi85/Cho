# Ticks during the survival part of the game
titleraw @a[m=adventure] actionbar {"rawtext":[{"translate":"actionbar.tip.boss"}]}
execute if entity @a if score ENABLE_BOSS_STATE_TRANSITIONS var matches 1 run function main/tick_state_boss/test_trs
# For the fighting players adjust their settings
execute as @s[x=240.0,y=-7.0,z=-354.0,dx=-66,dy=34,dz=-140] run function main/tick_state_boss/player_in_boss_fight
# For the players outside of the boss fight area adjust their settings
execute as @a unless entity @s[x=240.0,y=-7.0,z=-354.0,dx=-66,dy=34,dz=-140] run function main/tick_state_boss/player_out_of_boss_fight
# If there is a player in the boss fight area, keep the hostile mobs away. Otherwise we don't want to assign resources
# for this task because there is noone to see the mobs.
execute if entity @a[x=240.0,y=-7.0,z=-354.0,dx=-66,dy=34,dz=-140] as @e[family=monster,type=!shapescape:overworld_spider,x=240.0,y=-7.0,z=-354.0,dx=-66,dy=34,dz=-140] at @s run function main/tick_state_boss/clear_mobs