# resets existing arena entity
event entity @e[type=shapescape:arena] despawn
tickingarea remove arena
summon shapescape:arena ~~~
tp @e[type=shapescape:arena] 206 -4 -368
execute at @e[type=shapescape:arena] run tickingarea add circle ~ ~ ~ 1 arena
gamerule doMobSpawning false
function environment/boss_arena/crates/set