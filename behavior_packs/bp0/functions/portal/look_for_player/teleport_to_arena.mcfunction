# Handles the choo choo portal during the survival state. Changes the state of the game and teleports all of the players
# to the boss arena. Passing through the portal also despawns it.
execute as @a run function warp/key_location/arena
function main/trs_boss
event entity @s despawn