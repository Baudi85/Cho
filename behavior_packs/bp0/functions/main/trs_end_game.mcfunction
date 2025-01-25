# Enters the state_boss 4 state, called from leaving the arena with a portal
give @a[x=240.0,y=-7.0,z=-354.0,dx=-66,dy=34,dz=-140] shapescape:mask
scoreboard players set states var 5
setworldspawn -795 64 -391
spawnpoint @a -795 64 -391
gamerule domobspawning true
gamerule dodaylightcycle true
gamerule doweathercycle true
weather clear
time set sunrise
function jump_scare_trigger/disable
tellraw @a {"rawtext":[{"translate":"survival_loop.win.tellraw"}]}