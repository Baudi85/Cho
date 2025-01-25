# Enters the tutorial_room 1 state, called from cutscene after falling down hole
scoreboard players set states var 2
setworldspawn 125 -54 -287
gamerule domobspawning false
gamerule dodaylightcycle false
gamerule doweathercycle false
weather clear
time set midnight
function jump_scare_trigger/disable