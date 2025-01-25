# Runs tests for transitioning into another state. The function runs only if the
# ENABLE_BOSS_STATE_TRANSITIONS variable is set to 1. The value is set in the
# cutscene animation to add a delay to make sure that the system won't trigger
# before the player is teleported to the right location. The test doesn't run if
# there is no players in the game (prevents the system from getting thriggered
# when player reconnects).
# The boss fight area:
# x=240.0,y=-7.0,z=-354.0,dx=-66,dy=34,dz=-140
# Player failed, return to survival state
execute unless entity @a[x=240.0,y=-7.0,z=-354.0,dx=-66,dy=34,dz=-140] run function main/tick_state_boss/test_trs/on_fail
# Player won, the boss is dead, go to the end game.
execute unless entity @e[type=shapescape:choochoo_boss,x=240.0,y=-7.0,z=-354.0,dx=-66,dy=34,dz=-140] run function main/tick_state_boss/test_trs/on_win