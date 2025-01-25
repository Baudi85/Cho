# Handles the choo choo portal during the tutorial room state. Changes the state of the game and teleports all of the players
# to the survival area. Passing through the portal also despawns it.
execute as @a run function warp/key_location/survival_spawn
function main/trs_survival
event entity @s despawn