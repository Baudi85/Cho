# Enters the state_boss 3 state, called from entering the arena with a portal
scoreboard players set ENABLE_BOSS_STATE_TRANSITIONS var 0
scoreboard players set states var 4
gamerule domobspawning false
gamerule dodaylightcycle false
gamerule doweathercycle false
weather clear
time set night
function jump_scare_trigger/disable
execute as @a run function environment/boss_arena/fog/set
gamemode adventure @a[m=survival]
effect @a[m=adventure] clear
# Spawn the boss and restore the crates
function environment/boss_arena/crates/set
# kill items in the boss area
kill @e[type=item,x=240.0,y=-7.0,z=-354.0,dx=-66,dy=34,dz=-140]
event entity @e[type=shapescape:choochoo_boss] despawn
event entity @e[type=shapescape:portal] despawn
event entity @e[type=shapescape:overworld_spider] despawn
summon shapescape:choochoo_boss 136 -6 -312
summon camera:boss_arena_start 136 -6 -312