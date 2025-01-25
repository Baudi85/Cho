kill @e[type=item, r=30]
scoreboard players set tutorial_jump_scare var 1
event entity @e[type=shapescape:choochoo_boss_tutorial] despawn
event entity @e[type=shapescape:choochoo_tutorial_breaker] despawn
execute positioned 136 -6 -312 run function tutorial/setup/jump_scare/sumon_entities
fill 136 -17 -286 136 -14 -294 shapescape:fake_wall 0 replace air
fill 135 -14 -287 135 -14 -294 shapescape:fake_wall 0 replace air
# Remove whatever bariers might be in the area
fill 128 -14 -288 135 -18 -293 air 0 replace barrier
# Barriers blocking falling into the hole
fill 129 -18 -293 135 -18 -287 barrier 0 replace air
# Wall of barriers blocking the path past the hole
fill 135 -14 -289 129 -17 -289 barrier 0 replace air