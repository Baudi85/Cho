# Stop the silent track to reenable music
music stop 4
# Despawn the minions
execute as @e[type=shapescape:overworld_spider] at @s run function main/tick_state_boss/test_trs/on_win/despawn_minions
# Boss fight loop - the transition ends when the boss death animation is over
execute if score BOSS_FIGHT_GAMEPLAY_LOOP var matches 1 unless entity @e[type=shapescape:choochoo_boss_dead,x=240.0,y=-7.0,z=-354.0,dx=-66,dy=34,dz=-140] run function main/tick_state_boss/test_trs/on_win/boss_loop
# Survival loop
execute unless score BOSS_FIGHT_GAMEPLAY_LOOP var matches 1 run function main/trs_end_game