# Enters the state_survival 2 state, called from leaving the tutorial_room with a portal
scoreboard players set states var 3
setworldspawn -795 64 -391
gamerule domobspawning true
gamerule dodaylightcycle true
gamerule doweathercycle true
weather clear
time set midnight
function jump_scare_trigger/enable_delayed
# Display the message on action bar only once
tellraw @a {"rawtext":[{"translate":"survival.tip.tellraw"}]}
# The survival spawnpoint must be updated only once (it's also updated if
# the player somehow gets back to the tutorial area)
spawnpoint @a -795 64 -391