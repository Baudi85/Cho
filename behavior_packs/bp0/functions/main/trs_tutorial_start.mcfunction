# Enters the tutorial_start 0 state, called from init
execute as @a run function warp/key_location/tutorial_start
scoreboard players set states var 1
setworldspawn 132 -17 -305
gamerule domobspawning false
gamerule dodaylightcycle false
gamerule doweathercycle false
weather clear
time set midnight
function jump_scare_trigger/disable
# If the player chooses this gameplay loop, losing the game will teleport the
# player back to survival state and wining will move the game to the end game
# state
scoreboard players set BOSS_FIGHT_GAMEPLAY_LOOP var 0