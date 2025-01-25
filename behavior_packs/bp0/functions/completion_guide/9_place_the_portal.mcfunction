# Place down the portal to enter the Choo Choo Boss arena.
#
# **WARNING** This function additionally spawns some blocks around the
# player that runs it. This is not a part of the completion steps for
# finishing the game. It does that to make sure that the portal spawned
# by this function is not inside a wall.
clear @a shapescape:portal_spawn_egg
execute as @a at @s run function completion_guide/9_place_the_portal/place_portal