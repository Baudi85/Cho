event entity @e[type=shapescape:portal] despawn
event entity @e[type=shapescape:overworld_spider] despawn
# Stop the silent track to reenable music
music stop 4
# Boss fight loop
execute if score BOSS_FIGHT_GAMEPLAY_LOOP var matches 1 run function main/tick_state_boss/test_trs/on_fail/boss_loop
# Survival loop
execute unless score BOSS_FIGHT_GAMEPLAY_LOOP var matches 1 run function main/tick_state_boss/test_trs/on_fail/survival_loop